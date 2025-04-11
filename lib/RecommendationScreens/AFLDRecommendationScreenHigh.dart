import 'dart:ui';

import 'package:flutter/material.dart';

class AFLDRecommendationScreenHigh extends StatelessWidget {
  const AFLDRecommendationScreenHigh({Key? key}) : super(key: key);

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
                          'assets/page-1/images/redCircle.png',
                          width: 460, // slightly smaller
                          fit: BoxFit.contain,
                        ),
                      ),
                      Text(
                        "\n\nHIGH \nRISK",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontFamily: 'RobotoCondensed',
                          fontSize: 36,
                          fontWeight: FontWeight.w900,
                          color: Color(0xFFFF0000),
                        ),
                      ),
                    ],
                  ),

                  SizedBox(height: 0), // reduced spacing

                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20.0),
                    child: Text(
                      "Consult a hepatologist/Doctor promptly to manage and mitigate the progression of Alcoholic Fatty Liver Disease.",
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
                          "Your risk for Alcoholic Fatty Liver Disease is high. This indicates significant liver damage, which could progress to cirrhosis or liver failure without immediate action. Intensive lifestyle changes and medical intervention are critical at this stage. Here are some essential recommendations to manage your condition:\n\n"

                              "• Immediately and completely abstain from alcohol. At this stage, even trace amounts of alcohol can cause serious and irreversible harm to your liver. Ceasing all alcohol consumption is absolutely non-negotiable and must be maintained long-term. This is the most important step you can take to slow down or stop disease progression.  \n\n"

                              "• Seek both medical and psychological support as part of your recovery. Consult with your healthcare provider for a comprehensive treatment plan tailored to your liver condition. Additionally, if you struggle with alcohol dependency, join a support group or attend counseling to receive structured emotional and behavioral support.  \n\n"

                              "• Undergo a thorough and ongoing medical evaluation. Your doctor may recommend regular liver function tests, imaging (like ultrasound or FibroScan), and possibly a liver biopsy. These tests help assess the current extent of liver damage and guide treatment decisions moving forward. Regular monitoring is essential to detect complications early.  \n\n"

                              "• Follow a supervised, nutrient-rich diet plan. It is crucial to work closely with a registered dietitian who specializes in liver health to create a diet tailored to your medical needs. Your diet should be high in vitamins, fiber, and healthy fats, while being low in processed sugars and saturated fats. A specialized plan can also help address nutritional deficiencies that often accompany liver damage.  \n\n"

                              "• Engage in safe and appropriate physical activity. Depending on your current health status, your doctor may recommend low-impact exercises like walking, yoga, or water aerobics. Regular movement can help improve metabolism, reduce fat accumulation, and support overall well-being — but it must be done within safe physical limits.  \n\n"

                              "• Discuss potential pharmacological therapies with your doctor. In some cases, medications may be prescribed to manage associated conditions like diabetes, high cholesterol, or to address inflammation in the liver. Do not self-medicate — all treatments should be carefully managed by a healthcare professional.  \n\n"

                              "• Be evaluated for potential liver transplantation. If your liver damage is advanced or unresponsive to treatment, your doctor may refer you to a transplant specialist for further evaluation. Early referral is important to ensure that all options remain available in the event of liver failure.  \n\n"

                              "Please take these recommendations seriously and act promptly. With professional guidance and dedicated lifestyle changes, further deterioration can be prevented, and in some cases, liver function can even partially recover.",
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