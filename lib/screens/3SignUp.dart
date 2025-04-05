import 'package:email_validator/email_validator.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '4login.dart';
import '5mainMenu.dart';
//import 'package:myapp/page-1/MainMenu.dart';

class MyApp3 extends StatefulWidget {
  @override
  _MyApp3State createState() => _MyApp3State();
}



class _MyApp3State extends State<MyApp3> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scene3(),
    );
  }
}


class Scene3 extends StatelessWidget {
  final String fullname = '';
  final String confirmpassword = '';
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final confirmpasswordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    double baseWidth = 390;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;

    return Scaffold(
      body:SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.fromLTRB(48 * fem, 74 * fem, 48 * fem, 77 * fem),
          width: double.infinity,
          decoration: BoxDecoration(
            color: Color(0xffffffff),
            image: DecorationImage(
              fit: BoxFit.cover,
              image: AssetImage(
                'assets/page-1/images/screenshot-825-1-bg.png',
              ),
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                margin: EdgeInsets.fromLTRB(0, 0, 0, 50 * fem),
                child: Text(
                  'Register',
                  style: GoogleFonts.robotoCondensed(
                    fontSize: 32 * ffem,
                    fontWeight: FontWeight.w700,
                    height: 1.1725 * ffem / fem,
                    color: Color(0xffffffff),
                  ),
                ),
              ),
              TextField(
                onChanged: (text1) {
                  // Handle full name input
                },
                decoration: InputDecoration(
                  labelText: 'Full Name',
                  labelStyle: GoogleFonts.robotoCondensed(
                    fontSize: 20 * ffem,
                    fontWeight: FontWeight.w400,
                    height: 1.1725 * ffem / fem,
                    color: Color(0xff807e7e),
                  ),
                  filled: true,
                  fillColor: Color(0xfff3efef),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(21 * fem),
                    borderSide: BorderSide.none,
                  ),
                  contentPadding: EdgeInsets.fromLTRB(
                      21 * fem, 23 * fem, 21 * fem, 16 * fem),
                ),
              ),
              SizedBox(height: 70),
              TextField(
                controller: emailController,
                decoration: InputDecoration(
                  labelText: 'Email',
                  labelStyle: GoogleFonts.robotoCondensed(
                    fontSize: 20 * ffem,
                    fontWeight: FontWeight.w400,
                    height: 1.1725 * ffem / fem,
                    color: Color(0xff807e7e),
                  ),
                  filled: true,
                  fillColor: Color(0xfff3efef),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(21 * fem),
                    borderSide: BorderSide.none,
                  ),
                  contentPadding: EdgeInsets.fromLTRB(
                      21 * fem, 23 * fem, 21 * fem, 16 * fem),
                ),
              ),
              SizedBox(height: 70),
              TextField(
                controller: passwordController,
                decoration: InputDecoration(
                  labelText: 'New Password',
                  labelStyle: GoogleFonts.robotoCondensed(
                    fontSize: 20 * ffem,
                    fontWeight: FontWeight.w400,
                    height: 1.1725 * ffem / fem,
                    color: Color(0xff807e7e),
                  ),
                  filled: true,
                  fillColor: Color(0xfff3efef),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(21 * fem),
                    borderSide: BorderSide.none,
                  ),
                  contentPadding: EdgeInsets.fromLTRB(
                      21 * fem, 23 * fem, 21 * fem, 16 * fem),
                ),
              ),
              SizedBox(height: 70),
              TextField(
                controller: confirmpasswordController,
                decoration: InputDecoration(
                  labelText: 'Confirm New Password',
                  labelStyle: GoogleFonts.robotoCondensed(
                    fontSize: 20 * ffem,
                    fontWeight: FontWeight.w400,
                    height: 1.1725 * ffem / fem,
                    color: Color(0xff807e7e),
                  ),
                  filled: true,
                  fillColor: Color(0xfff3efef),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(21 * fem),
                    borderSide: BorderSide.none,
                  ),
                  contentPadding: EdgeInsets.fromLTRB(
                      21 * fem, 23 * fem, 21 * fem, 16 * fem),
                ),
              ),
              SizedBox(height: 50),
              ElevatedButton(
                onPressed: () {
                  if(!EmailValidator.validate(emailController.text)){
                    print("Please enter a valid email");
                  }else if(passwordController.text.length<6){
                    print("Please enter a valid password");
                  }else if(passwordController.text==confirmpasswordController.text){
                    signUpWithEmailAndPassword(context);
                  }
                  else{
                  print("password does not match");
                  }
                  //Navigate to MyApp5
                  // Navigator.push(
                  //   context,
                  //   MaterialPageRoute(builder: (context) => MyApp5()),
                  // );
                },
                style: ButtonStyle(

                  backgroundColor:
                  MaterialStateProperty.all<Color>(Colors.white),
                  elevation: MaterialStateProperty.all<double>(0),
                  fixedSize: MaterialStateProperty.all<Size>(Size(160, 50)),
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15.0), // Add border radius here
                    ),
                  ),
                ),
                child: Center(
                  child: Text(
                    'SIGN UP',
                    style: GoogleFonts.robotoCondensed(
                      fontSize: 32 * ffem,
                      fontWeight: FontWeight.w700,
                      height: 1.1725 * ffem / fem,
                      color: Color(0xff292929),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 20),
              RichText(
                text: TextSpan(
                  style: GoogleFonts.robotoCondensed(
                    fontSize: 20 * ffem,
                    fontWeight: FontWeight.w400,
                    height: 1.1725 * ffem / fem,
                    color: Color(0xffffffff),
                  ),
                  children: [
                    TextSpan(
                      text: "Already have an account? ",
                    ),
                    TextSpan(
                      text: 'Log in',
                      style: GoogleFonts.robotoCondensed(
                        fontSize: 20 * ffem,
                        fontWeight: FontWeight.w400,
                        height: 1.1725 * ffem / fem,
                        color: Color(0xffcc0a0a),
                      ),
                      recognizer: TapGestureRecognizer()
                        ..onTap = () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => MyApp4())
                          );
                        },
                    ),
                  ],
                ),
              ),
              SizedBox(height: 10)
            ],
          ),
        ),
      )

    );
  }
  // methode for sign up
  Future<void> signUpWithEmailAndPassword(BuildContext context) async {
    try {
      final UserCredential authResult =
      await FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: emailController.text.trim(),
        password: passwordController.text.trim(),
      );
      // Handle successful sign-up here
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => MyApp5()),
      );
    } catch (e) {
      // Handle sign-up errors here
      print(e.toString());
    }
  }

}
