import 'package:flutter/material.dart';
import 'package:frontend/providers/likes_provider.dart';
import 'package:frontend/providers/results_provider.dart';
import 'package:frontend/screens/home.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
      MultiProvider(
          providers: [
            // ChangeNotifierProvider(
            //     create: (BuildContext context) => ResultsProvider()),
            ChangeNotifierProvider(
                create: (BuildContext context) => LikesProvider())
          ],
      child:PillsApp()
  ));
}

class PillsApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: '어바웃필스',
        home: HomeScreen(),
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
      );
  }
}
