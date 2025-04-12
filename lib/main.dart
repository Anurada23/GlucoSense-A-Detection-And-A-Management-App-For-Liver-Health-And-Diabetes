import 'package:app_gluco_sense/screens/1landing_page.dart';
import 'package:app_gluco_sense/screens/2signUp_login.dart';
import 'package:app_gluco_sense/screens/3SignUp.dart';
import 'package:app_gluco_sense/screens/4login.dart';
import 'package:app_gluco_sense/screens/5mainMenu.dart';
import 'package:app_gluco_sense/screens/Acanthosis_Nigricans.dart';
import 'package:app_gluco_sense/screens/Eruptive_Xanthomatosis.dart';
import 'package:app_gluco_sense/screens/Gangrene.dart';
import 'package:app_gluco_sense/screens/Necrobiosis_Lipoidica.dart';
import 'package:app_gluco_sense/screens/Psoriasis.dart';
import 'package:app_gluco_sense/screens/cameraScreen.dart';
import 'package:app_gluco_sense/screens/imagePicker.dart';
import 'package:app_gluco_sense/screens/sGPTScreen.dart';
import 'package:app_gluco_sense/screens/testScreen.dart';
import 'package:app_gluco_sense/screens/unknownDetection.dart';
import 'package:app_gluco_sense/screens/uploadTest.dart';
import 'package:app_gluco_sense/utils.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

void main() async{
  //debugPaintSizeEnabled = false;
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
  await Firebase.initializeApp();
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
      //SceneBEL ResultsScreen SceneMM Iphone1431 MyApp6 MyAppSGPT ResultsScreen
      home: MyAppSGPT(),

    );
  }
}


