import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'dart:ui';
import 'package:google_fonts/google_fonts.dart';

import '3SignUp.dart';
import '4login.dart';
//import 'package:myapp/utils.dart';

//import 'SignUp3.dart';
//import 'login4.dart';

class Scene2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    double baseWidth = 390;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;

    return Scaffold(
      body: Container(
        width: double.infinity,
        child: Container(
          // iphone142Z8C (1:2)
          width: double.infinity,
          height: 844*fem,
          decoration: BoxDecoration(
            color: Color(0xffffffff),
          ),
          child: Stack(
            children: [
              Positioned(
                // rectangle1Bon (1:3)
                left: 0*fem,
                top: 0*fem,
                child: Align(
                  child: SizedBox(
                    width: 390*fem,
                    height: 483*fem,
                    child: Image.asset(
                      'assets/page-1/images/rectangle-1.png',
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              Positioned(
                // rectangle2GqE (1:4)
                left: 0*fem,
                top: 374*fem,
                child: Align(
                  child: SizedBox(
                    width: 390*fem,
                    height: 524*fem,
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(52*fem),
                        color: Color(0xffd3d0d0),
                      ),
                    ),
                  ),
                ),
              ),
              Positioned(
                // ellipse1xi4 (1:5)
                left: 135*fem,
                top: 398*fem,
                child: Align(
                  child: SizedBox(
                    width: 120*fem,
                    height: 120*fem,
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(60*fem),
                        color: Color(0xffffffff),
                      ),
                    ),
                  ),
                ),
              ),
              Positioned(
                // iconverifiedEfa (1:6)
                left: 158*fem,
                top: 421*fem,
                child: Align(
                  child: SizedBox(
                    width: 74*fem,
                    height: 74*fem,
                    child: Image.asset(
                      'assets/page-1/images/icon-verified.png',
                      width: 74*fem,
                      height: 74*fem,
                    ),
                  ),
                ),
              ),
              //********************************sign up box
              Positioned(
                // rectangle4voJ (1:8)
                left: 115*fem,
                top: 588*fem,
                child: Align(
                  child: SizedBox(
                    width: 159*fem,
                    height: 53*fem,
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10*fem),
                          //color: Colors.white
                        color: Color(0xffffffff),
                      ),
                    ),
                  ),
                ),
              ),
              //**********************************LOgin box
              Positioned(
                // rectangle5pdn (1:9)
                left: 115*fem,
                top: 714*fem,
                child: Align(
                  child: SizedBox(
                    width: 159*fem,
                    height: 48*fem,
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10*fem),
                          //color: Colors.white
                        color: Color(0xffffffff),
                      ),
                    ),
                  ),
                ),
              ),
              Positioned(
                // donthaveanaccountjVr (1:10)
                left: 110*fem,
                top: 548*fem,
                child: Align(
                  child: SizedBox(
                    width: 179*fem,
                    height: 24*fem,
                    child: Text(
                      'Dont have an account?',
                      style: GoogleFonts.abel(
                        fontSize: 20*ffem,
                        fontWeight: FontWeight.w400,
                        height: 1.1725*ffem/fem,
                        color: Color(0xff807e7e),
                      ),
                    ),
                  ),
                ),
              ),
              Positioned(
                // haveanaccountYiC (1:11)
                left: 130*fem,
                top: 674*fem,
                child: Align(
                  child: SizedBox(
                    width: 140*fem,
                    height: 24*fem,
                    child: Text(
                      'Have an account?',
                      style: GoogleFonts.abel(
                        fontSize: 20*ffem,
                        fontWeight: FontWeight.w400,
                        height: 1.1725*ffem/fem,
                        color: Color(0xff807e7e),
                      ),
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 51*fem,
                top: 126*fem,
                child: Row(
                  children: [
                    Text(
                      'GLUCOSENSE',
                      style: GoogleFonts.getFont(
                        'Bodoni Moda',
                        fontSize: 40 * ffem,
                        fontWeight: FontWeight.w600,
                        height: 1.0075 * ffem / fem,
                        color: Color(0xffffffff),
                      ),
                      textAlign: TextAlign.center,
                    ),
                    SizedBox(width: 10 * fem), // Space between text and icon
                    Image.asset(
                      'assets/page-1/images/Xbox Cross.png',
                      width: 42 * fem,
                      height: 43 * fem,
                    ),
                  ],
                ),
              ),
              //**********************************************sign up button
              Positioned(
                left: 114*fem,
                top: 588*fem,
                child: Align(
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => MyApp3())
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      fixedSize: Size(170, 54),
                      backgroundColor: Colors.transparent,
                      elevation: 0,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      padding: EdgeInsets.all(0.0),
                      textStyle: TextStyle(
                        fontSize: 32*ffem,
                        fontWeight: FontWeight.w700,
                        height: 1.1725*ffem/fem,
                        color: Color(0xff504c4c),
                      ),
                    ),
                    child: Text(
                      'SIGN UP',
                      style: GoogleFonts.roboto(
                        color:Color(0xff504c4c),
                        fontSize: 32*ffem,
                        fontWeight: FontWeight.bold,
                        height: 1.1725*ffem/fem,
                      ),
                    ),
                  ),
                ),
              ),
              //***********************************login button
              Positioned(
                // login7ui (1:13)
                left: 115*fem,
                top: 713*fem,
                child: Align(
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => MyApp4())
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      fixedSize: Size(170, 52),
                      backgroundColor: Colors.transparent,
                      elevation: 0,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      padding: EdgeInsets.all(0.0),
                      textStyle: TextStyle(
                        fontSize: 32*ffem,
                        fontWeight: FontWeight.w700,
                        height: 1.1725*ffem/fem,
                        color: Color(0xff504c4c),
                      ),
                    ),
                    child: Text(
                      'LOGIN',
                      style: GoogleFonts.roboto(
                        color:Color(0xff504c4c),
                        fontSize: 32*ffem,
                        fontWeight: FontWeight.bold,
                        height: 1.1725*ffem/fem,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
    ;
  }
}



// class MyApp2 extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Flutter',
//       debugShowCheckedModeBanner: false,
//       //scrollBehavior: MyCustomScrollBehavior(),
//       theme: ThemeData(
//         primarySwatch: Colors.blue,
//       ),
//       //home:Scene(),
//       home: Scaffold(
//         body: SingleChildScrollView(
//           child: Scene2(),
//
//         ),
//       ),
//     );
//   }
// }



class MyApp2 extends StatelessWidget {

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'GlucoSense',
      theme: ThemeData(

        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: Scene2(),
    );
  }
}
