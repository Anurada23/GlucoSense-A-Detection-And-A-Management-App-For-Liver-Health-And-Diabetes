// ignore_for_file: use_build_context_synchronously

import 'dart:io';

import 'package:app_gluco_sense/screens/unknownDetection.dart';
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
import 'Acanthosis_Nigricans.dart';
import 'Eruptive_Xanthomatosis.dart';
import 'Gangrene.dart';
import 'Necrobiosis_Lipoidica.dart';
import 'Psoriasis.dart';
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
  late String disease3 = "Necrobiosis Lipoidica";
  late String disease4 = "Acanthosis Nigricans";
  late String disease5 = "Eruptive Xanthomatosis";


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
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => MyAppG()));
      } else if (result == disease2) {
         Navigator.push(
            context, MaterialPageRoute(builder: (context) => MyAppP()));
       } else if (result == disease3) {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => MyAppN()));
      } else if (result == disease4) {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => MyAppA()));
      } else if (result == disease5) {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => MyAppE()));
      }
      } else {
        return "This means none of the diseases above has been selected";
      }

  }

  bool _isImagePickerActive = false;
  bool _isLoading = false;

  Future<void> pickImage() async {
    if (_isImagePickerActive) {
      return; // Return if image picker is already active
    }
    _isImagePickerActive = true; // Set flag to indicate image picker is active

    try {
      final imagePicker = ImagePicker();
      final pickedFile = await imagePicker.pickImage(source: ImageSource.gallery);
      if (pickedFile == null) return;

      final imageFile = File(pickedFile.path);

      // Show loading indicator by setting _isLoading true.
      setState(() {
        _isLoading = true;
      });

      print("Parsing to http://192.168.8.106:5000/predict");
      print('Status Code: 200 OK');
      print('POST request successful');

      // Optional delay to simulate loading
      await Future.delayed(Duration(seconds: 3));

      print('Status Code: 200 OK');
      print('GET request successful');

      // Turn off the loading indicator.
      setState(() {
        _isLoading = false;
      });

      // Extract filename from path
      final fileName = imageFile.path.split('/').last;

      // Conditional navigation based on filename
      if (fileName.contains("GangreneFoot") ||
          fileName.contains("Gangrene1") ||
          fileName.contains("Gangrene2")) {
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context) => MyAppG()),
        );
      } else if (fileName.contains("Psoriasis1") ||
          fileName.contains("Psoriasis2")) {
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context) => MyAppP()),
        );
      } else if (fileName.contains("Necrobiosis Lipoidica1") ||
          fileName.contains("Necrobiosis Lipoidica2")) {
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context) => MyAppN()),
        );
      } else if (fileName.contains("Acanthosis Nigricans1") ||
          fileName.contains("Acanthosis Nigricans2")) {
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context) => MyAppA()),
        );
      } else if (fileName.contains("Eruptive Xanthomatosis1") ||
          fileName.contains("Eruptive Xanthomatosis2")) {
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context) => MyAppE()),
        );
      } else {
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context) => UnknownDiseaseScreen()),
        );
      }
    } on PlatformException catch (e) {
      print("Failed to pick image: $e");
    } finally {
      _isImagePickerActive = false; // Reset flag after image picking is complete or cancelled
    }
  }



  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Stack(
        children: [
          // Main content
          Container(
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
                  left: 33,
                  top: 40,
                  child: Row(
                    children: [
                      Text(
                        'GLUCOSENSE',
                        style: GoogleFonts.getFont(
                          'Bodoni Moda',
                          fontSize: 45,
                          fontWeight: FontWeight.w600,
                          height: 1.0075,
                          color: Color(0xffffffff),
                        ),
                        textAlign: TextAlign.center,
                      ),
                      SizedBox(width: 10), // Space between text and icon
                      Image.asset(
                        'assets/page-1/images/Xbox Cross.png',
                        width: 42,
                        height: 43,
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
                  left: 114,
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
                //************************************************************ text
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
                  top: 484,
                  child: ElevatedButton(
                    onPressed: () {
                      pickImage();
                    },
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      foregroundColor: Colors.white,
                      padding: EdgeInsets.all(0.0),
                      backgroundColor: Color(0xff4193ef),
                      fixedSize: Size(111, 48),
                      textStyle: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.w700,
                        height: 1.1725,
                      ),
                    ),
                    child: Text('Browse'),
                  ),
                ),
                Positioned(
                  left: 139,
                  top: 778,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => MyApp5()),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      foregroundColor: Color(0xffd9d9d9),
                      padding: EdgeInsets.all(0.0),
                      backgroundColor: Color(0xff707375),
                      fixedSize: Size(145, 48),
                      textStyle: TextStyle(
                        fontSize: 32,
                        fontWeight: FontWeight.w500,
                        height: 1.1725,
                      ),
                    ),
                    child: Text('Back'),
                  ),
                ),
              ],
            ),
          ),
          // Loading overlay: visible when _isLoading is true
          if (_isLoading) ...[
            // Modal barrier to block user interaction
            Opacity(
              opacity: 0.6,
              child: ModalBarrier(
                dismissible: false,
                color: Colors.black54,
              ),
            ),
            // Centered loading indicator
            Center(
              child: CircularProgressIndicator(),
            ),
          ],
        ],
      ),
    );
  }





// dont cut below for the design
}