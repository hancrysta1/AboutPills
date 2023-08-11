import 'dart:async';
import 'dart:convert';
import 'dart:io';
import 'package:frontend/screens/camera_after.dart';
import 'package:frontend/screens/home.dart';
import 'package:http/http.dart' as http;
import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'package:path/path.dart' show join;
import 'package:path_provider/path_provider.dart';
import 'package:provider/provider.dart';

import '../main.dart';
import '../providers/results_provider.dart';
import 'camera_results.dart';

runCamera(){
  camera();
}
Future<void> camera() async {
  final cameras = await availableCameras();
  final firstCamera = cameras.first;



  runApp(
    MaterialApp(
      theme: ThemeData.light(),
      home: TakePictureScreen(
        camera: firstCamera,
      ),
    ),
  );
}

class TakePictureScreen extends StatefulWidget {
  final CameraDescription camera;

  const TakePictureScreen({
    Key? key,
    required this.camera,
  }) : super(key: key);

  @override
  TakePictureScreenState createState() => TakePictureScreenState();
}

class TakePictureScreenState extends State<TakePictureScreen> {
  late CameraController _controller;
  late Future<void> _initializeControllerFuture;
  late XFile _image;

  @override
  void initState() {
    super.initState();
    _controller = CameraController(
      imageFormatGroup: ImageFormatGroup.yuv420,
      widget.camera,
      ResolutionPreset.medium,
    );
    _initializeControllerFuture = _controller.initialize();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  Future<void> _takePicture() async {
    try {
      await _initializeControllerFuture;
      final path = join(
        (await getTemporaryDirectory()).path,
        '${DateTime.now()}.png',
      );
      _image = await _controller.takePicture();
      _image.saveTo(path);
      await _uploadImage(path);

    } catch (e) {
      print(e);
    }
  }

  Future<void> _uploadImage(String path) async {
    try {
      final url = Uri.parse('http://36c0-172-83-13-4.ngrok-free.app/predict');
      final request = http.MultipartRequest('POST', url,);
      final file = File(path);

      final stream = http.ByteStream(file.openRead());
      final length = await file.length();
      final multipartFile = http.MultipartFile('file', stream, length,
          filename: file.path.split('/').last);
      request.files.add(multipartFile);
      final response = await request.send();

      if (response.statusCode == 200) {
        final responseString = await response.stream.bytesToString();
        final responseJson = json.decode(responseString).toString();
        //Map responseMap = jsonDecode(responseJson);
        // var res = Camera.fromJson(responseMap);
        //     print(imagePath);
        print(responseJson);
        List<String> resultsS = responseJson.split(' ');
        String resultColor = resultsS[1].replaceAll(',', '');
        resultColor = resultColor.replaceAll(' ', '');
        String resultShape = resultsS[3].replaceAll(',', '');
        resultShape = resultShape.replaceAll(' ', '');
        print("모양은"+resultShape);
        String resultMark = resultsS[5].replaceAll(',', '');
        resultMark = resultMark.replaceAll(' ', '');
        resultMark = resultMark.replaceAll('}', '');
        print("마크는"+resultMark);
        print(resultsS);
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => camera_results(resultColor: resultColor,resultShape: resultShape,resultMark: resultMark,imagePath: path,),
          ),
        );
        print(responseJson);

      } else {
        print('Failed to upload image. Status code: ${response.statusCode}');
        throw Exception('Failed to upload image');
      }
    } catch (e) {
      print(e);
    }
  }


  @override
  Widget build(BuildContext context) {
    return MultiProvider(
        providers: [
          ChangeNotifierProvider(
        create: (BuildContext context) => ResultsProvider())
    ],
        child:MaterialApp(
          builder: (context, snapshot) {
            return Scaffold(
              appBar: AppBar(
                iconTheme: IconThemeData(
                  color: Colors.black, //색변경
                ),
                leading: IconButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                          builder: (context) => PillsApp()));//뒤로가기
                    },
                    icon: Icon(Icons.arrow_back),
                    color: Colors.black),
                title: Text(''),
                backgroundColor: Colors.transparent,
                elevation: 0,
              ),
              body: FutureBuilder<void>(
                future: _initializeControllerFuture,
                builder: (context, snapshot) {
                  if (snapshot.connectionState == ConnectionState.done) {
                    return CameraPreview(_controller);
                  } else {
                    return Center(child: CircularProgressIndicator());
                  }
                },
              ),
              floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
              floatingActionButton: FloatingActionButton(
                child: Icon(Icons.camera_alt),
                onPressed: _takePicture,


        ),

      );
  }
    ));
}
}