import 'package:flutter/material.dart';

import '5mainMenu.dart';
import 'imagePicker.dart';


class MyAppN extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: ResultsScreenN(),
    );
  }
}
class ResultsScreenN extends StatelessWidget {
  const ResultsScreenN({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage(
              'assets/page-1/images/Gang.png',
            ),
            fit: BoxFit.cover,
          ),
        ),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
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
              const SizedBox(height: 44),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text(
                      'Diseases Found :',
                      style: TextStyle(
                        fontSize: 25,
                        color: Colors.black,
                      ),
                    ),
                    Text(
                      'Necrobiosis Lipoidica',
                      style: TextStyle(
                        fontSize: 40,
                        fontWeight: FontWeight.w700,
                        color: Colors.black,
                      ),
                    ),
                    SizedBox(height: 21),
                    Text(
                      'Necrobiosis lipoidica is a rare, chronic skin condition often linked to diabetes, characterized by yellowish-brown, atrophic plaques with a red border, typically on the shins. Lesions may ulcerate or scar. The exact cause is unknown but involves collagen degeneration and blood vessel inflammation. Treatment includes topical steroids, phototherapy, and managing underlying conditions.',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 20,
                        color: Color(0xFF3C3A3A),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 23),
              Center(
                child: Column(
                  children: [
                    ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            //MyApp5 MyApp2
                            MaterialPageRoute(builder: (context) => MyApp6())
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
                      onPressed: () {},
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
                        //MainScreen
                        Navigator.push(
                            context,
                            //MyApp5 MyApp2
                            MaterialPageRoute(builder: (context) => MyApp5())
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