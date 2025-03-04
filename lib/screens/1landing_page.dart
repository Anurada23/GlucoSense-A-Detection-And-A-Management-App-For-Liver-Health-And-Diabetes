import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'dart:ui';
import 'package:google_fonts/google_fonts.dart';
//import 'package:myapp/page-1/signUp_login2.dart';
import 'package:app_gluco_sense/utils.dart';

import '2signUp_login.dart';
import '5mainMenu.dart';
import 'imagePicker.dart';

class Scene1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double baseWidth = 390;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;

    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          color: Color(0xffd6d6d6),
          image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage(
              'assets/page-1/images/iPhone 14 - 36.png',
            ),
          ),
        ),
        child: Stack(
          children: [
            // NailDoc Text positioned at x=105, y=126
            Positioned(
              left: 51 * fem,
              top: 126 * fem,
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
            // ElevatedButton positioned at x=105, y=604
            Positioned(
              left: 105 * fem,
              top: 604 * fem,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      //MyApp5 MyApp2
                      MaterialPageRoute(builder: (context) => MyApp2())
                  );
                },
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(24),
                  ),
                  foregroundColor: Color(0xff6e6363),
                  padding: EdgeInsets.all(0.0),
                  backgroundColor: Colors.white,
                  fixedSize: Size(200, 70),
                  textStyle: TextStyle(
                    fontSize: 32 * ffem,
                    fontWeight: FontWeight.w700,
                    height: 1.1725 * ffem / fem,
                  ),
                ),
                child: Text('Get Started'),
              ),
            ),
            // "All rights reserved" positioned at x=152, y=772
            Positioned(
              left: 136 * fem,
              top: 752 * fem,
              child: Text(
                'All rights reserved',
                style: GoogleFonts.roboto(
                  fontSize: 15 * ffem,
                  fontWeight: FontWeight.bold,
                  height: 1.1725 * ffem / fem,
                  color: Color(0xffffffff),
                ),
              ),
            ),
            // Social Media Icons positioned individually
            Positioned(
              left: 124 * fem,
              top: 800 * fem,
              child: Image.asset(
                'assets/page-1/images/vector-SDv.png',
                width: 18 * fem,
                height: 18 * fem,
              ),
            ),
            Positioned(
              left: 188 * fem,
              top: 800 * fem,
              child: Image.asset(
                'assets/page-1/images/icon-facebook.png',
                width: 18 * fem,
                height: 19 * fem,
              ),
            ),
            Positioned(
              left: 252 * fem,
              top: 800 * fem,
              child: Image.asset(
                'assets/page-1/images/vector.png',
                width: 18 * fem,
                height: 18 * fem,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

