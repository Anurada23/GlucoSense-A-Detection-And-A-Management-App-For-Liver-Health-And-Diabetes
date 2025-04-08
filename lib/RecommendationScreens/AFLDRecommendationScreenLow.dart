import 'package:flutter/material.dart';

class AFLDRecommendationScreenLow extends StatelessWidget {
  const AFLDRecommendationScreenLow({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("AFLD - Low Risk Recommendations"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Center(
          child: Text(
            "Your risk for Alcoholic Liver Disease is low. Here are some recommendations to maintain liver health:\n\n"
                "• Maintain a balanced diet rich in fruits, vegetables, and lean protein.\n"
                "• Moderate alcohol consumption, or better yet, avoid alcohol altogether.\n"
                "• Keep regular exercise and manage your weight.\n"
                "• Follow up with regular medical check-ups to monitor liver function.",
            style: TextStyle(fontSize: 18.0),
          ),
        ),
      ),
    );
  }
}