import 'package:app_gluco_sense/screens/1landing_page.dart';
import 'package:app_gluco_sense/screens/2signUp_login.dart';
import 'package:app_gluco_sense/screens/3SignUp.dart';
import 'package:app_gluco_sense/screens/4login.dart';
import 'package:app_gluco_sense/screens/5mainMenu.dart';
import 'package:app_gluco_sense/screens/Gangrene.dart';
import 'package:app_gluco_sense/screens/cameraScreen.dart';
import 'package:app_gluco_sense/screens/testScreen.dart';
import 'package:app_gluco_sense/screens/uploadTest.dart';
import 'package:app_gluco_sense/utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

void main() {
  debugPaintSizeEnabled = false;
  runApp(const MyApp());

}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'GlucoSense',
      theme: ThemeData(

        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      //home: Scene1(), Scene5 SceneUploadTest
      //SceneBEL ResultsScreen SceneMM Iphone1431
      home: Scene1(),

    );
  }
}


