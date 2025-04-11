import 'dart:ui';

import 'package:flutter/material.dart';

class NAFLDRecommendationScreenMedium extends StatelessWidget {
  const NAFLDRecommendationScreenMedium({Key? key}) : super(key: key);

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
                          'assets/page-1/images/orangeCircle.png',
                          width: 460, // slightly smaller
                          fit: BoxFit.contain,
                        ),
                      ),
                      Text(
                        "\n\nMEDIUM \nRISK",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontFamily: 'RobotoCondensed',
                          fontSize: 36,
                          fontWeight: FontWeight.w900,
                          color: Color(0xFFFF9100),
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
                          "Your liver shows moderate fat accumulation, indicating a higher risk of progression to more severe liver conditions. Immediate lifestyle modifications are essential to halt or reverse disease progression:\n\n"

                              "• Initiate a structured weight loss plan. Aim for a gradual reduction of 5–10% of your body weight over six months through a combination of diet and exercise.  \n\n"

                              "• Embrace a liver-friendly diet. Follow a Mediterranean-style eating plan that includes:\n"
                              "   → Plenty of fruits and vegetables\n"
                              "   → Whole grains like quinoa and barley\n"
                              "   → Lean proteins such as fish, legumes, and tofu\n"
                              "   → Healthy fats from nuts, seeds, and olive oil\n"
                              "  Limit intake of:\n"
                              "   → Red and processed meats\n"
                              "   → Sugary beverages and snacks\n"
                              "   → High-fat dairy products  \n\n"

                              "• Increase physical activity. Incorporate at least 150 minutes of moderate-intensity exercise per week, such as brisk walking, dancing, or cycling.  \n\n"

                              "• Monitor liver health regularly. Schedule periodic evaluations, including blood tests and imaging, to assess liver function and detect any changes.  \n\n"

                              "• Manage coexisting health conditions. Control diabetes, high blood pressure, and high cholesterol through medication and lifestyle changes, as they can contribute to liver disease progression.  \n\n"

                              "• Limit alcohol consumption. Even moderate alcohol intake can worsen liver damage in NAFLD patients. It's advisable to minimize or abstain from alcohol.  \n\n"

                              "• Consider consulting a registered dietitian. A professional can provide personalized dietary guidance to support liver health.  \n\n"

                              "Taking these steps can significantly reduce liver fat and inflammation, improving overall liver function."
,
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