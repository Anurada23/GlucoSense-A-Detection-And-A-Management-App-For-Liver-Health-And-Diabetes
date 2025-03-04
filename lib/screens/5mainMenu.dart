import 'package:app_gluco_sense/screens/uploadTest.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '3SignUp.dart';
import 'cameraScreen.dart';
import 'imagePicker.dart';

class MyApp5 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scene5(),
    );
  }
}



class Scene5 extends StatelessWidget {
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
            //**************************************************************background light ash frame
            Positioned(
              left: 0,
              top: 138,
              child: Container(
                width: 411,
                height: 728,
                decoration: ShapeDecoration(
                  color: Color(0xFFD9D9D9),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(52),
                  ),
                ),
              ),
            ),
            //*****************************************************big white box
            Positioned(
              left: 24,
              top: 264,
              child: Container(
                width: 363,
                height: 440,
                decoration: ShapeDecoration(
                  color: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(18),
                  ),
                ),
              ),
            ),
            //************************************************ top timeline photo
            Positioned(
              left: 0,
              top: -42,
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
              top: 80 ,
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
            // Positioned(
            //   left: 33.14,
            //   top: 80,
            //   child: SizedBox(
            //     width: 369.93,
            //     height: 171.24,
            //     child: Text(
            //       'GLUCOSENSE',
            //       style: TextStyle(
            //         color: Colors.white,
            //         fontSize: 45,
            //         fontFamily: 'Bodoni Moda',
            //         height: 0,
            //       ),
            //     ),
            //   ),
            // ),
            //******************************************************** slogan
            Positioned(
              left: 61,
              top: 153,
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
            //************************************ 1 kotuwa
            Positioned(
              left: 36,
              top: 290,
              child: Stack(
                alignment: Alignment.center, // Ensures proper alignment
                children: [
                  // The background box (lowest layer)
                  Container(
                    width: 163,
                    height: 184,
                    decoration: ShapeDecoration(
                      color: Color(0xFF353A3C),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(18),
                      ),
                    ),
                  ),

                  // The Camera Image (middle layer)
                  Positioned(
                    left: 53, // Adjusted to center within the box
                    top: 51, // Adjusted for placement inside the box
                    child: Container(
                      width: 61,
                      height: 64,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage(
                            'assets/page-1/images/Camera.png',
                          ),
                          fit: BoxFit.contain,
                        ),
                      ),
                    ),
                  ),

                  // Transparent ElevatedButton (topmost layer)
                  Positioned.fill(
                    child: ElevatedButton(
                      onPressed: () {
                        //MainScreen
                        Navigator.push(
                            context,
                            //MyApp5 MyApp2
                            MaterialPageRoute(builder: (context) => MainScreen())
                        );
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.transparent, // Fully transparent
                        shadowColor: Colors.transparent, // Remove shadow
                        elevation: 0, // No elevation
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(18),
                        ),
                      ),
                      child: Container(), // Forces button to fill the space
                    ),
                  ),
                ],
              ),
            ),
            //****************************************** social bar
            Positioned(
              left: 62,
              top: 756,
              child: Container(
                width: 294,
                height: 65,
                decoration: ShapeDecoration(
                  color: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(19),
                  ),
                ),
              ),
            ),
            //***************************************************** cross
            // Positioned(
            //   left: 327,
            //   top: 92,
            //   child: Container(
            //     width: 54,
            //     height: 50,
            //     decoration: BoxDecoration(
            //       image: DecorationImage(
            //         image: NetworkImage("https://picsum.photos/54/50"),
            //         fit: BoxFit.contain,
            //       ),
            //     ),
            //   ),
            // ),
            //**********************************************kotuwa 2
            Positioned(
              left: 211,
              top: 290,
              child: Stack(
                alignment: Alignment.center, // Ensures proper alignment
                children: [
                  // The background box (lowest layer)
                  Container(
                    width: 163,
                    height: 184,
                    decoration: ShapeDecoration(
                      color: Color(0xD833383A),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(18),
                      ),
                    ),
                  ),

                  // The Upload Image (middle layer)
                  Positioned(
                    left: 48, // Adjusted to center within the box
                    top: 50, // Adjusted for proper placement inside the box
                    child: Container(
                      width: 67,
                      height: 68,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage(
                            'assets/page-1/images/Upload.png',
                          ),
                          fit: BoxFit.contain,
                        ),
                      ),
                    ),
                  ),

                  // Transparent ElevatedButton (topmost layer)
                  Positioned.fill(
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            //MyApp5 MyApp2
                            MaterialPageRoute(builder: (context) => MyApp6())
                        );
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.transparent, // Fully transparent
                        shadowColor: Colors.transparent, // Remove shadow
                        elevation: 0, // No elevation
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(18),
                        ),
                      ),
                      child: Container(), // Forces button to fill the space
                    ),
                  ),
                ],
              ),
            ),
            //************************************************************kotuwa 4
            Positioned(
              left: 210,
              top: 486,
              child: Stack(
                alignment: Alignment.center, // Ensures proper alignment
                children: [
                  // The background box (lowest layer)
                  Container(
                    width: 163,
                    height: 184,
                    decoration: ShapeDecoration(
                      color: Color(0x72353A3C),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(18),
                      ),
                    ),
                  ),

                  // The Settings Image (middle layer)
                  Positioned(
                    left: 47, // Adjusted to center within the box
                    top: 46, // Adjusted for proper placement inside the box
                    child: Container(
                      width: 68,
                      height: 70,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage(
                            'assets/page-1/images/Settings.png',
                          ),
                          fit: BoxFit.contain,
                        ),
                      ),
                    ),
                  ),

                  // Transparent ElevatedButton (topmost layer)
                  Positioned.fill(
                    child: ElevatedButton(
                      onPressed: () {
                        print("Settings Button Pressed!");
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.transparent, // Fully transparent
                        shadowColor: Colors.transparent, // Remove shadow
                        elevation: 0, // No elevation
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(18),
                        ),
                      ),
                      child: Container(), // Forces button to fill the space
                    ),
                  ),
                ],
              ),
            ),
            //************************************************************kotuwa 3
            Positioned(
              left: 36,
              top: 486,
              child: Stack(
                alignment: Alignment.center, // Ensures proper alignment
                children: [
                  // The background box (lowest layer)
                  Container(
                    width: 163,
                    height: 184,
                    decoration: ShapeDecoration(
                      color: Color(0xFF717676),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(18),
                      ),
                    ),
                  ),

                  // The Graph Report Image (middle layer)
                  Positioned(
                    left: 47, // Adjusted to center within the box
                    top: 44, // Adjusted for proper placement inside the box
                    child: Container(
                      width: 75,
                      height: 63,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage(
                            'assets/page-1/images/GraphReport.png',
                          ),
                          fit: BoxFit.contain,
                        ),
                      ),
                    ),
                  ),

                  // Transparent ElevatedButton (topmost layer)
                  Positioned.fill(
                    child: ElevatedButton(
                      onPressed: () {
                        print("Graph Report Button Pressed!");
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.transparent, // Fully transparent
                        shadowColor: Colors.transparent, // Remove shadow
                        elevation: 0, // No elevation
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(18),
                        ),
                      ),
                      child: Container(), // Forces button to fill the space
                    ),
                  ),
                ],
              ),
            ),

            //************************************************************kotuwa 1 sticker
            // Positioned(
            //   left: 89,
            //   top: 345,
            //   child: Container(
            //     width: 61,
            //     height: 64,
            //     decoration: BoxDecoration(
            //       image: DecorationImage(
            //         image: AssetImage(
            //           'assets/page-1/images/Camera.png',
            //         ),
            //         fit: BoxFit.contain,
            //       ),
            //     ),
            //   ),
            // ),
            //************************************************************kotuwa 2 sticker
            // Positioned(
            //   left: 261,
            //   top: 342,
            //   child: Container(
            //     width: 67,
            //     height: 68,
            //     decoration: BoxDecoration(
            //       image: DecorationImage(
            //         image: AssetImage(
            //           'assets/page-1/images/Upload.png',
            //         ),
            //         fit: BoxFit.contain,
            //       ),
            //     ),
            //   ),
            // ),
            //************************************************************text
            Positioned(
              left: 97,
              top: 405,
              child: SizedBox(
                width: 140,
                child: Text(
                  'Scan',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontFamily: 'Roboto Condensed',
                    height: 0,
                  ),
                ),
              ),
            ),
            Positioned(
              left: 263,
              top: 410,
              child: Text(
                'Uplaod',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontFamily: 'Roboto Condensed',
                  height: 0,
                ),
              ),
            ),
            //************************************************************ text
            Positioned(
              left: 45,
              top: 602,
              child: SizedBox(
                width: 150,
                child: Text(
                  'Lipid Profile  Analysis',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontFamily: 'Roboto Condensed',
                    height: 0,
                  ),
                ),
              ),
            ),
            Positioned(
              left: 255,
              top: 608,
              child: Text(
                'Settings',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontFamily: 'Roboto Condensed',
                  height: 0,
                ),
              ),
            ),
            //******************************************************3 kotuwa sticker
            // Positioned(
            //   left: 82,
            //   top: 532,
            //   child: Container(
            //     width: 75,
            //     height: 63,
            //     decoration: BoxDecoration(
            //       image: DecorationImage(
            //         image: AssetImage(
            //           'assets/page-1/images/GraphReport.png',
            //         ),
            //         fit: BoxFit.contain,
            //       ),
            //     ),
            //   ),
            // ),
            //***************************************************** 4 kotuwa sticker
            // Positioned(
            //   left: 257,
            //   top: 531,
            //   child: Container(
            //     width: 68,
            //     height: 70,
            //     decoration: BoxDecoration(
            //       image: DecorationImage(
            //         image: AssetImage(
            //           'assets/page-1/images/Settings.png',
            //         ),
            //         fit: BoxFit.contain,
            //       ),
            //     ),
            //   ),
            // ),
            Positioned(
              left: 111 ,
              top: 780 ,
              child: Image.asset(
                'assets/page-1/images/_instagram_Main.png',
                width: 18 ,
                height: 18 ,
              ),
            ),
            Positioned(
              left: 194,
              top: 780 ,
              child: Image.asset(
                'assets/page-1/images/_facebook_Main.png',
                width: 18 ,
                height: 19 ,
              ),
            ),
            Positioned(
              left: 285 ,
              top: 780 ,
              child: Image.asset(
                'assets/page-1/images/_twitterMain_.png',
                width: 18 ,
                height: 18 ,
              ),
            ),




          ],
        )

      ),
    );

  }
}


