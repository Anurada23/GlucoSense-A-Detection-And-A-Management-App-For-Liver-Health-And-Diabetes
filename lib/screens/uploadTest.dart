import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '3SignUp.dart';

class MyAppUploadTest extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: SceneUploadTest(),
    );
  }
}



class SceneUploadTest extends StatelessWidget {
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
                    // Navigator.push(
                    //     context,
                    //     //MyApp5 MyApp2
                    //     MaterialPageRoute(builder: (context) => MyApp6())
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
                    // Navigator.push(
                    //     context,
                    //     //MyApp5 MyApp2
                    //     MaterialPageRoute(builder: (context) => MyApp6())
                    // );
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
}


