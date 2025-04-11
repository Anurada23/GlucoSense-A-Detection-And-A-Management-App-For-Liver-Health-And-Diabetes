import 'dart:ui';

import 'package:flutter/material.dart';

class HepatitisRecommendationScreenHigh extends StatelessWidget {
  const HepatitisRecommendationScreenHigh({Key? key}) : super(key: key);

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
                      "Consult a hepatologist/Doctor promptly to manage and mitigate the progression of Hepatitis Liver Disease.",
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
                          "Significant liver damage is present, indicating a high risk of progression to liver failure. Immediate and intensive interventions are necessary to manage your condition:\n\n"

                              "• Achieve substantial weight loss under medical supervision. Aim for a reduction of 7–10% of your body weight, which can significantly improve liver health.  \n\n"

                              "• Follow a specialized, nutrient-rich diet. Work with a dietitian to develop a plan that includes:\n"
                              "   → High intake of fruits, vegetables, and whole grains\n"
                              "   → Lean protein sources like fish and legumes\n"
                              "   → Healthy fats from nuts and olive oil\n"
                              "  Avoid:\n"
                              "   → Red and processed meats\n"
                              "   → Sugary foods and beverages\n"
                              "   → Saturated and trans fats  \n\n"

                              "• Engage in safe physical activity. Consult your healthcare provider to determine appropriate exercises based on your overall health status.  \n\n"

                              "• Undergo comprehensive medical evaluation. Regular monitoring through blood tests, imaging, and possibly liver biopsy is essential to assess the extent of liver damage.  \n\n"

                              "• Manage associated health conditions. Control diabetes, hypertension, and high cholesterol with appropriate medications and lifestyle changes.  \n\n"

                              "• Discuss potential pharmacological therapies. Certain medications may aid in managing liver disease and associated conditions; consult your doctor for options.  \n\n"

                              "• Evaluate for liver transplantation. In cases of advanced liver disease, assessment for liver transplantation may be necessary.  \n\n"

                              "• Abstain from alcohol completely. Any alcohol consumption can further damage your liver and should be avoided entirely.  \n\n"

                              "• Seek psychological support if needed. Managing a chronic condition can be challenging; counseling or support groups may provide assistance.  \n\n"

                              "Immediate action and adherence to medical advice are crucial to prevent further liver damage and improve your health outcomes."
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