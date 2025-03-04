import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'dart:ui';
import 'package:google_fonts/google_fonts.dart';
import 'package:app_gluco_sense/utils.dart';
import 'package:google_fonts/google_fonts.dart';




// import 'Beauslinestrt.dart';
// import 'Muehrckeslinestrt.dart';
// import 'Onycholysistrt.dart';
// import 'imagePicker.dart';

class SceneBEL extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double baseWidth = 390;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return Container(
      width: double.infinity,
      child: Container(
        // iphone144ubW (14:16)
        width: double.infinity,
        height: 844*fem,
        decoration: BoxDecoration (
          color: Color(0xffffffff),
        ),
        child: Stack(
          children: [
            Positioned(
              // screenshot8441dnQ (51:88)
              left: 0*fem,
              top: 9*fem,
              child: Align(
                child: SizedBox(
                  width: 390*fem,
                  height: 844*fem,
                  child: Image.asset(
                    'assets/page-1/images/screenshot-844-1.png',
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            Positioned(
              // rectangle258z4 (51:90)
              left: 0*fem,
              top: 0*fem,
              child: Align(
                child: SizedBox(
                  width: 390*fem,
                  height: 100*fem,
                  child: Container(
                    decoration: BoxDecoration (
                      borderRadius: BorderRadius.only(

                        topLeft: Radius.circular(0),
                        topRight: Radius.circular(0),
                        bottomLeft: Radius.circular(50*fem),
                        bottomRight: Radius.circular(50*fem),

                      ),
                      color: Color(0xffd9d9d9),
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              // resultsqtU (51:91)
              left: 146*fem,
              top: 39*fem,
              child: Align(
                child: SizedBox(
                  width: 96*fem,
                  height: 38*fem,
                  child: Text(
                    'Results',
                    style: SafeGoogleFont (
                      'Roboto Condensed',
                      fontSize: 32*ffem,
                      fontWeight: FontWeight.w700,
                      height: 1.1725*ffem/fem,
                      color: Color(0xff000000),
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              // diseasesfoundXFW (51:92)
              left: 104*fem,
              top: 111*fem,
              child: Align(
                child: SizedBox(
                  width: 201*fem,
                  height: 36*fem,
                  child: Text(
                    'Diseases Found ;',
                    style: SafeGoogleFont (
                      'Roboto Condensed',
                      fontSize: 30*ffem,
                      fontWeight: FontWeight.w400,
                      height: 1.1725*ffem/fem,
                      color: Color(0xff000000),
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              // muehrckeeslines1wN (51:93)
              left: 25*fem,
              top: 180*fem,
              child: Align(
                child: SizedBox(
                  width: 339*fem,
                  height: 53*fem,
                  child: Text(
                    'Beau\'s lines',
                    style: SafeGoogleFont (
                      'Roboto Condensed',
                      fontSize: 45*ffem,
                      fontWeight: FontWeight.w700,
                      height: 1.1725*ffem/fem,
                      color: Color(0xff000000),
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              // rectangle24JQg (51:94)   //scan again
              left: 90*fem,
              top: 281*fem,
              child: Align(
                child: SizedBox(
                  width: 229*fem,
                  height: 48*fem,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10*fem),
                      ), backgroundColor: Color(0xff090909),
                    ),
                    onPressed: () {
                      // Navigator.push(
                      //   context,
                      //   MaterialPageRoute(builder: (context) => MyApp5()),
                      // );
                    },
                    child: Container(),
                  ),
                ),
              ),
            ),
            Positioned(
              // scanagainp88 (51:95)
              left: 137*fem,
              top: 286*fem,
              child: Align(
                child: SizedBox(
                  width: 139*fem,
                  height: 38*fem,
                  child: Text(
                    'Scan again',
                    style: SafeGoogleFont (
                      'Roboto Condensed',
                      fontSize: 32*ffem,
                      fontWeight: FontWeight.w400,
                      height: 1.1725*ffem/fem,
                      color: Color(0xfff3ddc7),
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              // wanttipsandabackgroundaboutthi (51:96)
              left: 55*fem,
              top: 587*fem,
              child: Align(
                child: SizedBox(
                  width: 303*fem,
                  height: 71*fem,
                  child: Text(
                    'Want tips and a background about this \ndisease?',
                    style: SafeGoogleFont (
                      'Roboto Condensed',
                      fontSize: 20*ffem,
                      fontWeight: FontWeight.w400,
                      height: 1.1725*ffem/fem,
                      color: Color(0xff3b3939),
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              // rectangle23vKa (51:97) // treatments
              left: 125*fem,
              top: 633*fem,
              child: Align(
                child: SizedBox(
                  width: 159*fem,
                  height: 58*fem,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10*fem),
                      ), backgroundColor: Color(0xff000000),
                    ),
                    onPressed: () {
                      // Navigator.push(
                      //   context,
                      //   MaterialPageRoute(builder: (context) =>MyAppBELT()),
                      // );
                    },
                    child: Container(),
                  ),
                ),
              ),
            ),
            Positioned(
              // rectangle26bwW (51:98) // back
              left: 125*fem,
              top: 762*fem,
              child: Align(
                child: SizedBox(
                  width: 159*fem,
                  height: 48*fem,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10*fem),
                      ), backgroundColor: Color(0xff000000),
                    ),
                    onPressed: () {
                      // Navigator.push(
                      //   context,
                      //   MaterialPageRoute(builder: (context) => MyApp5()),
                      // );
                    },
                    child: Container(),
                  ),
                ),
              ),
            ),



            Positioned(
              // treatmentsXaG (51:99)
              left: 132*fem,
              top: 644*fem,
              child: Align(
                child: SizedBox(
                  width: 144*fem,
                  height: 38*fem,
                  child: Text(
                    'Treatments',
                    style: SafeGoogleFont (
                      'Roboto Condensed',
                      fontSize: 32*ffem,
                      fontWeight: FontWeight.w400,
                      height: 1.1725*ffem/fem,
                      color: Color(0xff898e91),
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              // back2X2 (51:100)
              left: 177*fem,
              top: 767*fem,
              child: Align(
                child: SizedBox(
                  width: 62*fem,
                  height: 38*fem,
                  child: Text(
                    'Back',
                    style: SafeGoogleFont (
                      'Roboto Condensed',
                      fontSize: 32*ffem,
                      fontWeight: FontWeight.w400,
                      height: 1.1725*ffem/fem,
                      color: Color(0xff586062),
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              // gotothemainmenuKW8 (51:101)
              left: 125*fem,
              top: 727*fem,
              child: Align(
                child: SizedBox(
                  width: 164*fem,
                  height: 24*fem,
                  child: Text(
                    'Go to the main menu',
                    style: SafeGoogleFont (
                      'Roboto Condensed',
                      fontSize: 20*ffem,
                      fontWeight: FontWeight.w400,
                      height: 1.1725*ffem/fem,
                      color: Color(0xff292929),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
class MyAppBEL1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter',
      debugShowCheckedModeBanner: false,
      scrollBehavior: MyCustomScrollBehavior(),
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      //home:Scene(),
      home: Scaffold(
        body: SingleChildScrollView(
          child: SceneBEL(),//Scene1(),

        ),
      ),
    );
  }
}