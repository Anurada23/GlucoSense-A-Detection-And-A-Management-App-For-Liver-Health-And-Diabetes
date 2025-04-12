import 'dart:ui';
import 'package:flutter/material.dart';

import '5mainMenu.dart';
import 'imagePicker.dart';

class UnknownDiseaseScreen extends StatelessWidget {
  const UnknownDiseaseScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      // appBar: AppBar(
      //   title: Text(
      //     "Liver Disease Analysis",
      //     style: TextStyle(
      //       fontFamily: 'RobotoCondensed',
      //       fontWeight: FontWeight.bold,
      //       fontSize: 26,
      //       color: Color(0xFF4A4E4E),
      //     ),
      //   ),
      //   backgroundColor: Colors.transparent,
      //   elevation: 0,
      //   flexibleSpace: ClipRect(
      //     child: BackdropFilter(
      //       filter: ImageFilter.blur(sigmaX: 10.0, sigmaY: 10.0),
      //       child: Container(
      //         decoration: BoxDecoration(
      //           gradient: LinearGradient(
      //             begin: Alignment.topCenter,
      //             end: Alignment.bottomCenter,
      //             colors: [
      //               Colors.white.withOpacity(0.6),
      //               Colors.white.withOpacity(0.3),
      //               Colors.transparent,
      //             ],
      //             stops: [0.0, 0.5, 1.0],
      //           ),
      //         ),
      //       ),
      //     ),
      //   ),
      // ),
      body: Container(
        width: double.infinity,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/page-1/images/Gang.png"),
            fit: BoxFit.cover,
          ),
        ),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              // Header box with Results Title
              Container(
                width: double.infinity,
                padding: const EdgeInsets.symmetric(vertical: 22, horizontal: 70),
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  color: const Color(0xFF202521),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(0),
                    topRight: Radius.circular(0),
                    bottomLeft: Radius.circular(50),
                    bottomRight: Radius.circular(50),
                  ),
                ),
                child: const Text(
                  'Results',
                  style: TextStyle(
                    fontSize: 32,
                    fontWeight: FontWeight.w700,
                    color: Colors.white,
                  ),
                ),
              ),
              const SizedBox(height: 84),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    // Text(
                    //   'Diseases Found :',
                    //   style: TextStyle(
                    //     fontSize: 25,
                    //     color: Colors.black,
                    //   ),
                    // ),
                    SizedBox(height: 12),
                    Text(
                      'Unknown Condition',
                      style: TextStyle(
                        fontSize: 40,
                        fontWeight: FontWeight.w700,
                        color: Colors.black,
                      ),
                    ),
                    SizedBox(height: 21),
                    Text(
                      'The detected condition does not match any known diseases in our scope. This might be due to atypical features or an unrecognized pathology. Please consult a healthcare professional for further evaluation and advice.',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 20,
                        color: Color(0xFF3C3A3A),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 197),
              Center(
                child: Column(
                  children: [
                    ElevatedButton(
                      onPressed: () {
                        // Browse again – for example navigate to the imagePicker screen
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => MyApp6(),
                          ),
                        );
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0xFF2E3031),
                        padding: const EdgeInsets.symmetric(horizontal: 45, vertical: 5),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                      child: const Text(
                        'Browse again',
                        style: TextStyle(
                          fontSize: 32,
                          color: Color(0xFF6E7273),
                        ),
                      ),
                    ),
                    const SizedBox(height: 18),
                    TextButton(
                      onPressed: () {
                        // Navigate to main menu
                      },
                      child: const Text(
                        'Go to the main menu',
                        style: TextStyle(
                          fontSize: 20,
                          color: Color(0xFF292929),
                        ),
                      ),
                    ),
                    const SizedBox(height: 20),
                    ElevatedButton(
                      onPressed: () {
                        // Go back to previous screen (e.g., results or prior screen)
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => MyApp5(),
                          ),
                        );
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0xFF2E3031),
                        padding: const EdgeInsets.symmetric(horizontal: 48, vertical: 5),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                      child: const Text(
                        'Back',
                        style: TextStyle(
                          fontSize: 32,
                          color: Color(0xFF5E6668),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 34),
            ],
          ),
        ),
      ),
    );
  }
}
