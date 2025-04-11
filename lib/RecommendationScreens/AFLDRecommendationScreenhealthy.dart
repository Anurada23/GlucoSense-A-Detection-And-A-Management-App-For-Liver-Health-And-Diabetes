import 'dart:ui';

import 'package:flutter/material.dart';

class AFLDRecommendationScreenhealthy extends StatelessWidget {
  const AFLDRecommendationScreenhealthy({Key? key}) : super(key: key);

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
                          'assets/page-1/images/blueCircle.png',
                          width: 460, // slightly smaller
                          fit: BoxFit.contain,
                        ),
                      ),
                      Text(
                        "\n\n HEALTHY! ",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontFamily: 'RobotoCondensed',
                          fontSize: 36,
                          fontWeight: FontWeight.w900,
                          color: Color(0xFF3900FF),
                        ),
                      ),
                    ],
                  ),

                  SizedBox(height: 0), // reduced spacing

                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20.0),
                    child: Text(
                      "Keep it up!!",
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
                          "Your liver appears to be healthy. To maintain this good status and support your overall well-being, here are some general lifestyle recommendations:\n\n"

                              "• Maintain a balanced and nutritious diet. A diet rich in whole foods helps the liver function optimally. Focus on:\n"
                              "   → Fresh fruits and vegetables for antioxidants and fiber\n"
                              "   → Whole grains like oats, brown rice, and quinoa\n"
                              "   → Lean proteins such as fish, legumes, and skinless poultry\n"
                              "   → Healthy fats from sources like olive oil, nuts, seeds, and avocados\n\n"
                              "  Limit the intake of:\n"
                              "   → Highly processed and fried foods\n"
                              "   → Excessive sugar, sugary drinks, and refined carbs\n"
                              "   → Saturated fats and red meats in large quantities\n\n"

                              "• Avoid alcohol or consume it in moderation. If you do drink, stay within recommended limits (1 drink per day for women, 2 for men). Excess alcohol is one of the major contributors to liver damage over time.\n\n"

                              "• Stay physically active. Aim for at least 150 minutes of moderate aerobic activity per week, such as brisk walking, dancing, swimming, or cycling. Add muscle-strengthening exercises twice a week to improve metabolic health.\n\n"

                              "• Keep a healthy weight. Obesity and fat accumulation around the abdomen can increase your risk for non-alcoholic fatty liver disease. A stable, healthy weight helps reduce strain on the liver.\n\n"

                              "• Stay hydrated. Drinking sufficient water throughout the day aids the liver’s detoxification process and supports overall organ function. Limit sugary or caffeinated drinks.\n\n"

                              "• Avoid unnecessary medications and toxins. Only take medications that are prescribed or recommended by a healthcare professional. Be cautious with over-the-counter drugs, herbal supplements, or exposure to chemicals and solvents.\n\n"

                              "• Practice safe hygiene. Wash hands regularly, ensure food is cooked properly, and avoid sharing needles or personal hygiene items to prevent infections like hepatitis.\n\n"
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