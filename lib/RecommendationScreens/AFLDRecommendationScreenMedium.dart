import 'dart:ui';

import 'package:flutter/material.dart';

class AFLDRecommendationScreenMedium extends StatelessWidget {
  const AFLDRecommendationScreenMedium({Key? key}) : super(key: key);

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
                          "Your risk for Alcoholic Fatty Liver Disease is moderate. At this stage, there is a noticeable accumulation of fat in your liver, which can lead to further complications if not addressed promptly. However, with timely and consistent lifestyle modifications, the condition is often reversible. Please consider the following personalized recommendations:\n\n"

                              "• Cease alcohol consumption immediately. Even occasional or moderate alcohol use can further damage your liver and accelerate disease progression. Complete and lifelong abstinence from all forms of alcohol is strongly advised to allow your liver the best chance to heal and recover.  \n\n"

                              "• Implement a structured and sustainable weight loss plan. Aim to gradually reduce 5–10% of your current body weight over the next six months. This modest weight loss has been clinically shown to significantly reduce liver fat, inflammation, and associated metabolic stress on the body. Consider working with a healthcare professional or nutritionist for a guided plan.  \n\n"

                              "• Adopt a liver-friendly and anti-inflammatory diet. A Mediterranean-style diet is highly recommended and should include:\n"
                              "   → A wide variety of colorful fruits and vegetables packed with antioxidants and fiber\n"
                              "   → Whole grains such as brown rice, oats, and quinoa that provide sustained energy\n"
                              "   → Lean sources of protein like fish, legumes, poultry, and tofu to support tissue repair\n"
                              "   → Healthy fats from nuts, seeds, olive oil, and avocados that support liver health\n"
                              "  At the same time, limit or avoid the following:\n"
                              "   → Processed and fried foods that are high in trans fats\n"
                              "   → Sugary beverages like soda and packaged juices that increase fat buildup\n"
                              "   → High-fat dairy products such as cream and full-fat cheese\n\n"

                              "• Engage in regular and consistent physical activity. Strive to perform at least 150 minutes of moderate-intensity exercise each week, such as brisk walking, light jogging, cycling, or swimming. Physical activity not only helps with weight management but also improves insulin sensitivity and reduces liver fat over time.  \n\n"

                              "• Monitor your liver health through routine medical checkups. Regular liver function tests (LFTs), ultrasound scans, or other evaluations will help track the state of your liver and ensure that early signs of worsening are caught and managed appropriately. Discuss a follow-up plan with your doctor.  \n\n"

                              "• Address and manage coexisting medical conditions. Conditions like diabetes, hypertension, and high cholesterol can compound liver damage and accelerate progression. Proper medication, diet, and lifestyle measures to control these issues are essential for protecting your liver and overall health. Collaborate closely with your healthcare team to develop a comprehensive care strategy.  \n\n"

                              "By following these recommendations consistently, you can take control of your liver health and reduce the risk of progression to more advanced stages of liver disease. Early action truly makes a difference."
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