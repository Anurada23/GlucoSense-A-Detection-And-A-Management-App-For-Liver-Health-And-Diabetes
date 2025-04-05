import 'package:email_validator/email_validator.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '3SignUp.dart';
import '5mainMenu.dart';

class MyApp4 extends StatefulWidget {
  @override
  _MyApp4State createState() => _MyApp4State();
}

class _MyApp4State extends State<MyApp4> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scene4(),
    );
  }
}

class Scene4 extends StatelessWidget {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    double baseWidth = 390;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;

    return Scaffold(
      body: SingleChildScrollView( // Wrap the body with SingleChildScrollView
        child: Container(
          padding: EdgeInsets.fromLTRB(56 * fem, 175 * fem, 40 * fem, 83 * fem),
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
                margin: EdgeInsets.fromLTRB(0, 0, 0, 63 * fem),
                child: Text(
                  'Welcome..',
                  style: GoogleFonts.robotoCondensed(
                    fontSize: 32 * ffem,
                    fontWeight: FontWeight.w700,
                    height: 1.1725 * ffem / fem,
                    color: Color(0xffffffff),
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.fromLTRB(0, 0, 0, 57),
                child: TextField(
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
              ),
              SizedBox(height: 30),
              Container(
                margin: EdgeInsets.fromLTRB(0, 0, 0, 57),
                child: TextField(
                  controller: passwordController,
                  decoration: InputDecoration(
                    labelText: 'Password',
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
              ),
              ElevatedButton(
                onPressed: () {
                  if (!EmailValidator.validate(emailController.text))
                  {print("Please enter valid email address");}
                  else if (passwordController.text.length < 6)
                  {print("Please enter valid password");}
                  else
                  {signInWithEmailAndPassword(context);}
                  //Handle login logic here MyApp5
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
                    'LOGIN',
                    style: GoogleFonts.robotoCondensed(
                      fontSize: 32 * ffem,
                      fontWeight: FontWeight.w700,
                      height: 1.1725 * ffem / fem,
                      color: Color(0xff292929),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 50),
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
                      text: "Don't have an account? ",
                    ),
                    TextSpan(
                      text: 'Sign up',
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
                              MaterialPageRoute(
                                  builder: (context) => MyApp3()));
                        },
                    ),
                  ],
                ),
              ),
              SizedBox(height: 100)
            ],
          ),
        ),
      ),
    );
  }
  // methode for log in
  Future<void> signInWithEmailAndPassword(BuildContext context) async {
    try {
      final UserCredential authResult =
      await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: emailController.text.trim(),
        password: passwordController.text.trim(),
      );
      // Handle successful sign-in here
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => MyApp5()),
      );
    } catch (e) {
      print(e);
      // Handle sign-in errors here
      // create relevant error in flutter app
      print("user not found. Please signup and try again");
    }
  }

}

