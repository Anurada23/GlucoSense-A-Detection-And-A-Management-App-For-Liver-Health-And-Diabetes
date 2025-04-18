import 'dart:ui';

import 'package:flutter/material.dart';

class AFLDRecommendationScreenLow extends StatelessWidget {
  const AFLDRecommendationScreenLow({Key? key}) : super(key: key);

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
                      "Implement these practices to minimize the risk of Alcoholic Fatty Liver Disease",
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
                          "Your risk for Alcoholic Fatty Liver Disease is low. While this is reassuring, it's important to continue taking proactive steps to maintain your liver health and prevent any future complications. Here are some personalized recommendations:\n\n"

                              "• Abstain from alcohol. Even minimal alcohol intake can lead to fat buildup in the liver over time. For individuals with any risk of liver disease, complete avoidance of alcohol is the safest choice. This prevents progression to more serious conditions like alcoholic hepatitis or cirrhosis.\n\n"

                              "• Maintain a healthy weight. Excess weight, especially around the abdomen, increases the risk of fat accumulation in the liver. Aim for a gradual and sustainable weight loss of 5–10% of your body weight over six months. This can significantly reduce liver fat, improve insulin sensitivity, and lower inflammation.\n\n"

                              "• Adopt a balanced, liver-friendly diet. A Mediterranean-style eating plan is ideal. Include plenty of:\n"
                              "   → Fresh fruits and vegetables (for fiber, vitamins, and antioxidants)\n"
                              "   → Whole grains (like brown rice, oats, and quinoa)\n"
                              "   → Lean proteins (such as fish, skinless poultry, and legumes)\n"
                              "   → Healthy fats (found in olive oil, nuts, and seeds)\n\n"
                              "  Limit consumption of:\n"
                              "   → Processed and fast foods\n"
                              "   → Sugary beverages and sweets\n"
                              "   → High-fat dairy and red meats\n\n"
                              "  This dietary approach helps manage weight, reduce liver fat, and lower cholesterol levels.\n\n"

                              "• Engage in regular physical activity. Incorporate at least 150 minutes of moderate-intensity aerobic exercise weekly—such as brisk walking, cycling, or swimming. In addition, strength training 2–3 times a week can help maintain muscle mass and improve metabolism.\n\n"

                              "• Ensure adequate sleep and manage stress. Try to get 7–8 hours of restful sleep each night. Chronic sleep deprivation and high stress levels are associated with metabolic issues and liver dysfunction. Establishing a regular sleep routine and practicing stress-reduction techniques (e.g., mindfulness or yoga) can support better liver health.\n\n"

                              "• Stay hydrated. Drinking enough water throughout the day helps the liver process and eliminate toxins efficiently. Limit sugary and caffeinated drinks and prioritize water or herbal teas.\n\n"

                              "• Schedule regular medical check-ups. Routine liver function tests and overall health assessments help detect any early signs of liver stress. Early intervention makes treatment and lifestyle changes more effective.\n\n"

                              "• Educate yourself and stay informed. Understanding the risks, symptoms, and early warning signs of liver disease helps you take action early. Stay proactive and informed about your health.\n\n"

                              "Maintaining a healthy lifestyle today can go a long way in preventing liver-related complications in the future."
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