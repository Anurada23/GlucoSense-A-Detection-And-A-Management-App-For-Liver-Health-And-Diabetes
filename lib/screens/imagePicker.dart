// ignore_for_file: use_build_context_synchronously

import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/services.dart';
import 'dart:ui';
import 'package:google_fonts/google_fonts.dart';
import 'package:image_picker/image_picker.dart';
// import 'package:myapp/page-1/Clubbing.dart';
// import 'package:myapp/page-1/Muehrckresline.dart';
// import 'package:myapp/page-1/Whitespot.dart';
// import 'package:myapp/utils.dart';
// import 'package:image_picker/image_picker.dart';
// import 'Beauslines.dart';
// import 'Blackline.dart';
// import 'MainMenu.dart';
// import 'Onycholysis.dart';
// import 'Onycholysistrt.dart';
//
// import 'TerrysNailtrt.dart';
// import 'Terrysnail.dart';
import '../utils.dart';
import '5mainMenu.dart';
import 'Gangrene.dart';
import 'cameraScreen.dart';
import 'package:http/http.dart' as http;
import 'package:path/path.dart' show basename;

class MyApp6 extends StatefulWidget {
  @override
  _MyApp6State createState() => _MyApp6State();
}

class _MyApp6State extends State<MyApp6> {
  File? image1;
  late String disease1 = "Gangrene";
  late String disease2 = "Psoriasis";
  late String disease3 = "Necrobiosis Lipoidica ";
  late String disease4 = "Acanthosis Nigricans ";
  late String disease5 = "Eruptive Xanthomatosis";
  // late String disease6 = "terry's nail";
  // late String disease7 = "white spot";

  Future<Object?> sendImage(File imageFile) async {
    var stream = http.ByteStream(imageFile.openRead().cast());
    var length = await imageFile.length();

    var uri = Uri.parse('http://192.168.8.106:5000/predict');
    var request = http.MultipartRequest("POST", uri);

    var multipartFile = http.MultipartFile(
      'file',
      stream,
      length,
      filename: basename(
          imageFile.path), // Set the filename of the file being uploaded
    );
    request.files.add(multipartFile);

    var response = await request.send();
    if (response.statusCode == 200) {
      String result = await response.stream.bytesToString();
      print(result);
      if (result == disease1) {
        // ignore: use_build_context_synchronously
      //   Navigator.push(
      //       context, MaterialPageRoute(builder: (context) => MyAppBEL1()));
      // } else if (result == disease2) {
      //   Navigator.push(
      //       context, MaterialPageRoute(builder: (context) => MyAppBL1()));
      // } else if (result == disease3) {
      //   Navigator.push(
      //       context, MaterialPageRoute(builder: (context) => MyAppC1()));
      // } else if (result == disease4) {
      //   Navigator.push(
      //       context, MaterialPageRoute(builder: (context) => MyAppML1()));
      // } else if (result == disease5) {
      //   Navigator.push(
      //       context, MaterialPageRoute(builder: (context) => MyAppON1()));
      // } else if (result == disease6) {
      //   Navigator.push(
      //       context, MaterialPageRoute(builder: (context) => MyAppTN1()));
      // } else if (result == disease7) {
      //   Navigator.push(
      //       context, MaterialPageRoute(builder: (context) => MyAppWS1()));
      } else {
        return "This means none of the diseases above has been selected";
      }

    } else {
      throw Exception('Failed to predict image');
    }
  }

  bool _isImagePickerActive = false;


  Future<void> pickImage() async {
     if (_isImagePickerActive) {
       return; // Return if image picker is already active
     }
     _isImagePickerActive = true; // Set flag to indicate image picker is active
    try {
      final imagePicker = ImagePicker();
      final pickedFile =
      await imagePicker.pickImage(source: ImageSource.gallery);
      if (pickedFile == null) return;

      final imageFile = File(pickedFile.path);

      //await sendImage(imageFile);


      //demonstration*******************************************************
      // Add a 2-second delay before navigation
      //just time********************************************

      // await Future.delayed(Duration(seconds: 2));
      //
      // Navigator.push(
      //   context,
      //   MaterialPageRoute(builder: (context) => MyAppG()),
      // );

      //*************************************************************

      //time+ loading widgit *********************************************
      // Show loading dialog
      // showDialog(
      //   context: context,
      //   barrierDismissible: false, // Prevent closing before time
      //   builder: (context) {
      //     return AlertDialog(
      //       backgroundColor: Colors.transparent,
      //       elevation: 0,
      //       content: Center(
      //         child: CircularProgressIndicator(),
      //       ),
      //     );
      //   },
      // );

// Wait for 3 seconds
      await Future.delayed(Duration(seconds: 3));

// Close the loading dialog
    //  Navigator.pop(context);

// Navigate to ResultsScreen
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => ResultsScreen()),
      );

      //**********************************************************************
    } on PlatformException catch (e) {
      print("Failed to pick image: $e");
    } finally {
      _isImagePickerActive =
      false; // Reset flag after image picking is complete or cancelled
    }
  }


  // @override
  // Widget build(BuildContext context) {
  //   double baseWidth = 390;
  //   double fem = MediaQuery.of(context).size.width / baseWidth;
  //   double ffem = fem * 0.97;
  //   return Scaffold(
  //     body:  Container(
  //       width: double.infinity,
  //       child: Container(
  //         // iphone1413uB6 (46:31)
  //         width: double.infinity,
  //         height: 844 * fem,
  //         decoration: BoxDecoration(
  //           color: Color(0xffffffff),
  //         ),
  //         child: Stack(
  //           children: [
  //             Positioned(
  //               // tips2Wc (46:38)
  //               left: 154 * fem,
  //               top: 467 * fem,
  //               child: Align(
  //                 child: SizedBox(
  //                   width: 79 * fem,
  //                   height: 53 * fem,
  //                   child: Text(
  //                     'Tips',
  //                     style: SafeGoogleFont(
  //                       'Roboto Condensed',
  //                       fontSize: 45 * ffem,
  //                       fontWeight: FontWeight.w700,
  //                       height: 1.1725 * ffem / fem,
  //                       color: Color(0xff101010),
  //                     ),
  //                   ),
  //                 ),
  //               ),
  //             ),
  //             Positioned(
  //               // rectangle22vrt (46:50)
  //               left: 0 * fem,
  //               top: 740 * fem,
  //               child: Align(
  //                 child: SizedBox(
  //                   width: 390 * fem,
  //                   height: 50 * fem,
  //                   child: Container(
  //                     decoration: BoxDecoration(
  //                       color: Color(0xff807e7e),
  //                     ),
  //                   ),
  //                 ),
  //               ),
  //             ),
  //             Positioned(
  //               // rectangle223gc (46:51)
  //               left: 0 * fem,
  //               top: 0 * fem,
  //               child: Align(
  //                 child: SizedBox(
  //                   width: 390 * fem,
  //                   height: 822 * fem,
  //                   child: Container(
  //                     decoration: BoxDecoration(
  //                       borderRadius: BorderRadius.circular(45 * fem),
  //                       color: Color(0xffffffff),
  //                     ),
  //                   ),
  //                 ),
  //               ),
  //             ),
  //             Positioned(
  //               // rectangle11xoa (46:35)
  //               left: 0 * fem,
  //               top: 0 * fem,
  //               child: Align(
  //                 child: SizedBox(
  //                   width: 390 * fem,
  //                   height: 145 * fem,
  //                   child: Container(
  //                     decoration: BoxDecoration(
  //                       borderRadius: BorderRadius.only(
  //                         topLeft: Radius.circular(0),
  //                         topRight: Radius.circular(0),
  //                         bottomLeft: Radius.circular(50 * fem),
  //                         bottomRight: Radius.circular(50 * fem),
  //                       ), // circular(50*fem),
  //                       color: Color(0xffdfdddd),
  //                     ),
  //                   ),
  //                 ),
  //               ),
  //             ),
  //             //********************************************************//MAin header text
  //             Positioned(
  //               // naildocgUg (46:36)
  //               left: 112 * fem,
  //               top: 8 * fem,
  //               child: Align(
  //                 child: SizedBox(
  //                   width: 185 * fem,
  //                   height: 101 * fem,
  //                   child: Text(
  //                     'GlucoSense',
  //                     style: SafeGoogleFont(
  //                       'Medula One',
  //                       fontSize: 100 * ffem,
  //                       fontWeight: FontWeight.w400,
  //                       height: 1.0075 * ffem / fem,
  //                       color: Color(0xff090909),
  //                     ),
  //                   ),
  //                 ),
  //               ),
  //             ),
  //
  //
  //             Positioned(
  //               // rectangle4pDW (46:52)
  //               left: 104 ,
  //               top: 490 ,
  //               child: ElevatedButton(
  //                 onPressed: () {
  //                   pickImage();
  //                 },
  //                 style: ElevatedButton.styleFrom(
  //                   shape: RoundedRectangleBorder(
  //                     borderRadius: BorderRadius.circular(10 * fem),
  //                   ),
  //                   backgroundColor: Color(0xff817f7f),
  //                 ),
  //                 child: SizedBox(
  //                   width: 160 ,
  //                   height: 66 ,
  //                   child: Container(),
  //                 ),
  //               ),
  //             ),
  //             // the ElevatedButton is used as a wrapper around the SizedBox widget. The onPressed property of the `ElevatedButton
  //
  //             Positioned(
  //               // backjrG (46:53)
  //               left: 160 * fem,
  //               top: 481 * fem,
  //               child: Align(
  //                 child: SizedBox(
  //                   width: 90 * fem,
  //                   height: 38 * fem,
  //                   child: Text(
  //                     'Upload',
  //                     style: SafeGoogleFont(
  //                       'Roboto Condensed',
  //                       fontSize: 32 * ffem,
  //                       fontWeight: FontWeight.w400,
  //                       height: 1.1725 * ffem / fem,
  //                       color: Color(0xfff3efef),
  //                     ),
  //                   ),
  //                 ),
  //               ),
  //             ),
  //
  //             Positioned(
  //               // pleasesteadythecameraandholdit (46:54)
  //               left: 58 * fem,
  //               top: 588 * fem,
  //               child: Align(
  //                 child: SizedBox(
  //                   width: 294 * fem,
  //                   height: 47 * fem,
  //                   child: Text(
  //                     'Upload a excisting photo from a folder ',
  //                     style: SafeGoogleFont(
  //                       'Roboto Condensed',
  //                       fontSize: 20 * ffem,
  //                       fontWeight: FontWeight.w400,
  //                       height: 1.1725 * ffem / fem,
  //                       color: Color(0xff807e7e),
  //                     ),
  //                   ),
  //                 ),
  //               ),
  //             ),
  //             //********************************************************Main screen Button
  //             Positioned(
  //               // rectangle4pDW (46:52)
  //               left: 104 ,
  //               top: 685 ,
  //               child: ElevatedButton(
  //                 onPressed: () {
  //                   //  onPressed logic here
  //                   // Navigator.push(context,
  //                   //     MaterialPageRoute(builder: (context) => MyAppMM()));
  //                 },
  //                 style: ElevatedButton.styleFrom(
  //                   shape: RoundedRectangleBorder(
  //                     borderRadius: BorderRadius.circular(10 * fem),
  //                   ),
  //                   // Color(0xff817f7f)
  //                   backgroundColor: Color(0xff817f7f),
  //                 ),
  //                 child: SizedBox(
  //                   width: 160 ,
  //                   height: 66 ,
  //                 ),
  //               ),
  //             ),
  //
  //             Positioned(
  //               // backjrG (46:53)
  //               left: 168 * fem,
  //               top: 661 * fem,
  //               child: Align(
  //                 child: SizedBox(
  //                   width: 80 * fem,
  //                   height: 38 * fem,
  //                   child: Text(
  //                     'Back',
  //                     style: SafeGoogleFont(
  //                       'Roboto Condensed',
  //                       fontSize: 35 * ffem,
  //                       fontWeight: FontWeight.w400,
  //                       height: 1.1725 * ffem / fem,
  //                       color: Color(0xfff3efef),
  //                     ),
  //                   ),
  //                 ),
  //               ),
  //             ),
  //           ],
  //         ),
  //       ),
  //     ),
  //   );
  //
  // }
  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Container(
          width: double.infinity,
          height: 870,
          clipBehavior: Clip.antiAlias,
          decoration: BoxDecoration(color: Colors.white),

          child: Stack(
            children: [
              //*****************************************background light ash frame
              Positioned(
                left: 0,
                top: 68,
                child: Container(
                  width: 409,
                  height: 779,
                  decoration: ShapeDecoration(
                    color: Color(0xFFD9D9D9),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(52),
                    ),
                  ),
                ),
              ),
              //******************************************************big white box
              Positioned(
                left: 24,
                top: 188,
                child: Container(
                  width: 363,
                  height: 539,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(6),
                    border: Border.all(
                      color: Colors.grey, // Grey border
                      width: 1.5, // Adjust thickness
                    ),
                  ),
                ),
              ),
              //************************************************ top timeline photo
              Positioned(
                left: 0,
                top: -119,
                child: Container(
                  width: 412,
                  height: 281,
                  decoration: ShapeDecoration(
                    image: DecorationImage(
                      image: AssetImage(
                        'assets/page-1/images/Samantha-Weiser 1.png',
                      ),
                      fit: BoxFit.fill,
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 33 ,
                top: 40 ,
                child: Row(
                  children: [
                    Text(
                      'GLUCOSENSE',
                      style: GoogleFonts.getFont(
                        'Bodoni Moda',
                        fontSize: 45 ,
                        fontWeight: FontWeight.w600,
                        height: 1.0075 ,
                        color: Color(0xffffffff),
                      ),
                      textAlign: TextAlign.center,
                    ),
                    SizedBox(width: 10 ), // Space between text and icon
                    Image.asset(
                      'assets/page-1/images/Xbox Cross.png',
                      width: 42 ,
                      height: 43 ,
                    ),
                  ],
                ),
              ),

              //******************************************************** slogan
              Positioned(
                left: 61,
                top: 103,
                child: SizedBox(
                  width: 350,
                  child: Text(
                    'Know the Signs, Take Control.',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 22,
                      fontFamily: 'Roboto Condensed',
                      height: 0,
                    ),
                  ),
                ),
              ),


              //*****************************************kotuwa 1 sticker
              Positioned(
                left: 167,
                top: 345,
                child: Container(
                  width: 90,
                  height: 90,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(
                        'assets/page-1/images/Full Image.png',
                      ),
                      fit: BoxFit.contain,
                    ),
                  ),
                ),
              ),

              Positioned(
                left:114,
                top: 436,
                child: SizedBox(
                  width: 240,
                  child: Text(
                    'Browse your file here',
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 20,
                      fontFamily: 'Roboto Condensed',
                      fontWeight: FontWeight.bold,
                      height: 0,
                    ),
                  ),
                ),
              ),

              // //************************************************************ text
              Positioned(
                left: 89,
                top: 745,
                child: SizedBox(
                  width: 250,
                  child: Text(
                    'Back to the main menu',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 20,
                      fontFamily: 'Roboto Condensed',
                      fontWeight: FontWeight.bold,
                      height: 0,
                    ),
                  ),
                ),
              ),

              Positioned(
                left: 158,
                top: 484 ,
                child: ElevatedButton(
                  onPressed: () {
                    pickImage();
                    // Navigator.push(
                    //     context,
                    //     //MyApp5 MyApp2
                    //     MaterialPageRoute(builder: (context) => MyApp5())
                    // );
                  },
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    //Color(0xff6e6363)  Colors.white
                    foregroundColor: Colors.white,
                    padding: EdgeInsets.all(0.0),
                    backgroundColor: Color(0xff4193ef) ,
                    fixedSize: Size(111, 48),
                    textStyle: TextStyle(
                      fontSize: 24 ,
                      fontWeight: FontWeight.w700,
                      height: 1.1725 ,
                    ),
                  ),
                  child: Text('Browse'),
                ),
              ),
              Positioned(
                left: 139,
                top: 778 ,
                child: ElevatedButton(
                  onPressed: () {
                    //pickImage();
                    Navigator.push(
                        context,
                        //MyApp5 MyApp2
                        MaterialPageRoute(builder: (context) => MyApp5())
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    //Color(0xff6e6363)  Colors.white B6BBBC
                    foregroundColor: Color(0xffd9d9d9),
                    padding: EdgeInsets.all(0.0),
                    backgroundColor: Color(0xff707375) ,
                    fixedSize: Size(145, 48),
                    textStyle: TextStyle(
                      fontSize: 32 ,
                      fontWeight: FontWeight.w500,
                      height: 1.1725 ,
                    ),
                  ),
                  child: Text('Back'),
                ),
              ),



            ],
          )

      ),
    );

  }




// dont cut below for the design
}