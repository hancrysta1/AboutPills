// import 'dart:io';
// import 'package:flutter/material.dart';
// import 'package:provider/provider.dart';
// import '../providers/results_provider.dart';
// import '../widgets/results_list.dart';
//
// class camera_after extends StatefulWidget{
//   camera_after({Key? key, required this.imagePath, required this.responseJson}) : super(key: key);
//   final String imagePath;final String responseJson;
//   @override
//   State<camera_after> createState() => _caState(imagePath,responseJson);
// }
//
// class _caState extends State<camera_after> {
//   final String imagePath;final String responseJson;
//
//   _caState(this.imagePath, this.responseJson);
//
//   @override
//   Widget build(BuildContext context) {
//     print(imagePath);
//     print(responseJson);
//     List<String> resultsS = responseJson.split(' ');
//     String resultColor = resultsS[1].replaceAll(',', '');
//     resultColor = resultColor.replaceAll(' ', '');
//     String resultShape = resultsS[3].replaceAll(',', '');
//     resultShape = resultShape.replaceAll(' ', '');
//     String resultMark = resultsS[5].replaceAll(',', '');
//     resultMark = resultMark.replaceAll(' ', '');
//     resultMark = resultMark.replaceAll('}', '');
//     return Container(
//         child:
//         Consumer<ResultsProvider>(
//             builder: (context, value, child) =>
//                 ResultsList(results: value.allResults)),
//
//     );
//     //
//     //
//     //   MaterialApp(
//     //     builder: (context, snapshot) {
//     //       return Scaffold(
//     //         appBar: AppBar(
//     //           iconTheme: IconThemeData(
//     //             color: Colors.black, //색변경
//     //           ),
//     //           leading: IconButton(
//     //               onPressed: () {
//     //                 Navigator.pop(context); //뒤로가기
//     //               },
//     //               icon: Icon(Icons.arrow_back),
//     //               color: Colors.black),
//     //           title: Text(''),
//     //           backgroundColor: Colors.transparent,
//     //           elevation: 0,
//     //         ),
//     //
//     //         body: Column(
//     //               children: [
//     //                 Container(
//     //                   child: HeaderTile(context,resultColor,resultShape,resultMark),
//     //                   height: 500,
//     //                 ),
//     //                 Expanded(child: SearchResults()),
//     //               ],
//     //             ),
//     //
//     //       );
//     //     }
//     // );
//   }
//
//   @override
//   Widget HeaderTile(BuildContext context,String rc,String rs,String rm) {
//     return Expanded(
//         child: Column(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: <Widget>[
//               Padding(
//                 padding: EdgeInsets.all(15),
//               ),
//               Center(
//                 child: Text(
//                   '<'+rc+'>의 <'+rs+'> 알약',
//                   style: TextStyle(
//                       fontFamily: "Inter-Medium",
//                       fontSize: 18,
//                       fontStyle: FontStyle.italic),
//                 ),
//               ),
//               Padding(
//                 padding: EdgeInsets.all(10),
//               ),
//               Image.file(File(imagePath),width: 300,
//                 height: 300,
//               ),
//               Padding(
//                 padding: EdgeInsets.all(10),
//               ),
//               Center(
//                 child: Text(
//                   '검색결과는 다음과 같습니다.',
//                   style: TextStyle(
//                       fontFamily: "Inter-Medium",
//                       fontSize: 18,
//                       fontWeight: FontWeight.bold),
//                 ),
//               ),
//               Padding(
//                 padding: EdgeInsets.all(30),
//               ),
//             ]));
//   }
//
//   @override
//   Widget _buildResult(BuildContext context) {
//     final Image cr = Image.file(File(imagePath), width: double.infinity,
//       height: double.infinity, fit: BoxFit.contain,);
//     return ListView(
//       children: [
//         Column(
//         mainAxisAlignment: MainAxisAlignment.center,
//         children: <Widget>[
//           Expanded(
//             child: Consumer<ResultsProvider>(
//                 builder: (context, value, child) =>
//                     ResultsList(results: value.allResults)),
//           ),
//         ],
//       ),
//
//     ]
//     );
//   }
//
// }
