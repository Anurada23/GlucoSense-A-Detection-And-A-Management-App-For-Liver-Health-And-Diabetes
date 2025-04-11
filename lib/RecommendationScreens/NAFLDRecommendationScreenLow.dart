import 'dart:ui';

import 'package:flutter/material.dart';

class NAFLDRecommendationScreenLow extends StatelessWidget {
  const NAFLDRecommendationScreenLow({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        title: Text(
          "    Recommendations",
          style: TextStyle(
            fontFamily: 'RobotoCondensed',
            fontWeight: FontWeight.bold,
            fontSize: 26,
            color: Color(0xFF4A4E4E),
          ),
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
        flexibleSpace: ClipRect(
          child: BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 10.0, sigmaY: 10.0),
            child: Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    Colors.white.withOpacity(0.6),
                    Colors.white.withOpacity(0.3),
                    Colors.transparent,
                  ],
                  stops: [0.0, 0.5, 1.0],
                ),
              ),
            ),
          ),
        ),
      ),
      body: Stack(
        children: [
          // Background image
          Positioned.fill(
            child: Image.asset(
              //"assets/page-1/images/Gang.png" assets/page-1/images/ScreenRec.jpg'
              'assets/page-1/images/Gang.png',
              fit: BoxFit.cover,
            ),
          ),

          // Scrollable content
          SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.only(top: 30.0), // Leave space for AppBar
              child: Column(
                children: [
                  Stack(
                    alignment: Alignment.center,
                    children: [
                      SizedBox(
                        height: 250, // reduced height
                        child: Image.asset(
                          'assets/page-1/images/greenCircle.png',
                          width: 460, // slightly smaller
                          fit: BoxFit.contain,
                        ),
                      ),
                      Text(
                        "\n\nLOW \nRISK",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontFamily: 'RobotoCondensed',
                          fontSize: 36,
                          fontWeight: FontWeight.w900,
                          color: Color(0xFF00C402),
                        ),
                      ),
                    ],
                  ),

                  SizedBox(height: 0), // reduced spacing

                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20.0),
                    child: Text(
                      "Implement these practices to minimize the risk of Non-Alcoholic Fatty Liver Disease",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontFamily: 'RobotoCondensed',
                        fontSize: 22, // slight adjustment
                        fontWeight: FontWeight.bold,
                        color: Color(0xFF444B4D),
                      ),
                    ),
                  ),

                  SizedBox(height: 16), // smaller spacing

                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20.0),
                    child: Card(
                      margin: EdgeInsets.only(bottom: 12.0), // moved up
                      color: Colors.white.withOpacity(0.65),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Text(
                          "Your liver health is currently stable, but early signs of fat accumulation are present. To prevent progression and maintain optimal liver function, consider the following lifestyle adjustments:\n\n"

                              "• Maintain a healthy weight. Even modest weight loss can reduce liver fat and improve overall liver health. Aim for a gradual reduction of 3–5% of your body weight.  \n\n"

                              "• Adopt a balanced diet rich in whole foods. Focus on:\n"
                              "   → Fresh fruits and vegetables\n"
                              "   → Whole grains like brown rice and oats\n"
                              "   → Lean proteins such as fish, legumes, and poultry\n"
                              "   → Healthy fats from sources like olive oil, nuts, and avocados\n"
                              "  Limit intake of:\n"
                              "   → Processed and fried foods\n"
                              "   → Sugary beverages and high-fructose corn syrup\n"
                              "   → High-fat dairy products  \n\n"

                              "• Engage in regular physical activity. Aim for at least 150 minutes of moderate-intensity exercise per week, such as brisk walking, cycling, or swimming.  \n\n"

                              "• Limit alcohol consumption. While NAFLD is not caused by alcohol, excessive intake can exacerbate liver damage. It's advisable to minimize or avoid alcohol altogether.  \n\n"

                              "• Ensure adequate sleep. Aim for 7–8 hours of quality sleep each night, as poor sleep can negatively impact liver function and overall metabolic health.  \n\n"

                              "• Schedule regular medical check-ups. Periodic evaluations can monitor liver function and detect any early signs of progression.  \n\n"

                              "Implementing these practices can help maintain liver health and prevent the advancement of NAFLD.",
                          style: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: 18,

                            color: Color(0xFF353A3C),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),

        ],
      ),
    );
  }
}