import 'dart:ui';

import 'package:flutter/material.dart';

import '../RecommendationScreens/AFLDRecommendationScreenLow.dart';

class ResultsScreen2 extends StatelessWidget {
  final Map<String, String> results;

  const ResultsScreen2({Key? key, required this.results}) : super(key: key);

  // Helper function to get the color for a specific risk level.
  Color getRiskColor(String riskLevel) {
    switch (riskLevel.toLowerCase()) {
      case 'healthy':
        return Color(0xFF4193EF); // Healthy - Blue
      case 'low':
        return Color(0xFF56AB5F); // Low - Green
      case 'medium':
        return Color(0xFFF99155); // Medium - Orange
      case 'high':
        return Color(0xFFEC5F5F); // High - Red
      default:
        return Colors.grey; // Unknown risk - fallback color
    }
  }


  // This helper function routes to the correct recommendation screen,
  // based on the disease name and risk level.
  void _navigateToRecommendation(BuildContext context, String disease, String risk) {
    // For each disease, push to the corresponding recommendation screen.
    if(disease == 'Alcoholic Liver Disease') {
      if (risk == 'low') {
        Navigator.push(context, MaterialPageRoute(builder: (_) => AFLDRecommendationScreenLow()));
      } else if (risk == 'medium') {
        //Navigator.push(context, MaterialPageRoute(builder: (_) => AFLDRecommendationScreenMedium()));
      } else if (risk == 'high') {
       // Navigator.push(context, MaterialPageRoute(builder: (_) => AFLDRecommendationScreenHigh()));
      }
    } else if(disease == 'Non-Alcoholic Fatty Liver Disease (NAFLD)') {
      if (risk == 'low') {
        //Navigator.push(context, MaterialPageRoute(builder: (_) => NAFLDRecommendationScreenLow()));
      } else if (risk == 'medium') {
        Navigator.push(context, MaterialPageRoute(builder: (_) => AFLDRecommendationScreenLow()));
      } else if (risk == 'high') {
        //Navigator.push(context, MaterialPageRoute(builder: (_) => NAFLDRecommendationScreenHigh()));
      }
    } else if(disease == 'Cirrhosis') {
      if (risk == 'low') {
        //Navigator.push(context, MaterialPageRoute(builder: (_) => CirrhosisRecommendationScreenLow()));
      } else if (risk == 'medium') {
        //Navigator.push(context, MaterialPageRoute(builder: (_) => CirrhosisRecommendationScreenMedium()));
      } else if (risk == 'high') {
       // Navigator.push(context, MaterialPageRoute(builder: (_) => CirrhosisRecommendationScreenHigh()));
      }
    } else if(disease == 'Cholestatic Liver Disease') {
      if (risk == 'low') {
        //Navigator.push(context, MaterialPageRoute(builder: (_) => CholestaticRecommendationScreenLow()));
      } else if (risk == 'medium') {
        //Navigator.push(context, MaterialPageRoute(builder: (_) => CholestaticRecommendationScreenMedium()));
      } else if (risk == 'high') {
        //Navigator.push(context, MaterialPageRoute(builder: (_) => CholestaticRecommendationScreenHigh()));
      }
    } else if(disease == 'Hepatitis') {
      if (risk == 'low') {
       // Navigator.push(context, MaterialPageRoute(builder: (_) => HepatitisRecommendationScreenLow()));
      } else if (risk == 'medium') {
        //Navigator.push(context, MaterialPageRoute(builder: (_) => HepatitisRecommendationScreenMedium()));
      } else if (risk == 'high') {
        //Navigator.push(context, MaterialPageRoute(builder: (_) => HepatitisRecommendationScreenHigh()));
      }
    }
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        title: Text(
          "Liver Disease Analysis",
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
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/page-1/images/Gang.png"),
            fit: BoxFit.cover,
          ),
        ),
        child: ListView(
          padding: EdgeInsets.fromLTRB(16.0, kToolbarHeight + 32.0, 16.0, 32.0),
          physics: AlwaysScrollableScrollPhysics(),
          children: [
            ...results.entries.map((entry) {
              String diseaseName = entry.key;
              String resultString = entry.value;

              String riskLevel = 'unknown';
              String riskScore = '0';

              List<String> parts = resultString.split("risk level:");
              if (parts.length > 1) {
                String secondPart = parts[1].trim();
                List<String> subParts = secondPart.split("(");
                if (subParts.isNotEmpty) {
                  riskLevel = subParts[0].trim();
                }
                if (subParts.length > 1) {
                  String scorePart = subParts[1].replaceAll(")", "").trim();
                  List<String> scoreParts = scorePart.split(":");
                  if (scoreParts.length > 1) {
                    riskScore = scoreParts[1].trim();
                  }
                }
              }

              Color riskButtonColor = getRiskColor(riskLevel);

              Widget riskText = RichText(
                textAlign: TextAlign.center,
                text: TextSpan(
                  style: TextStyle(
                    fontFamily: 'RobotoCondensed',
                    fontSize: 16,
                    fontWeight: FontWeight.normal,
                    color: Color(0xFF4A4E4E),
                  ),
                  children: [
                    TextSpan(text: "Susceptibility level to this disease:\n"),
                    TextSpan(
                      text: "${riskLevel[0].toUpperCase()}${riskLevel.substring(1)}",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: riskButtonColor,
                      ),
                    ),
                    TextSpan(text: " (Risk Score $riskScore)"),
                  ],
                ),
              );

              return Card(
                margin: EdgeInsets.only(bottom: 16.0),
                color: Colors.white.withOpacity(0.65),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        diseaseName,
                        style: TextStyle(
                          fontFamily: 'RobotoCondensed',
                          fontWeight: FontWeight.w600,
                          fontSize: 20,
                          color: Color(0xFF4A4E4E),
                        ),
                      ),
                      SizedBox(height: 8.0),
                      Center(
                        child: Column(
                          children: [
                            riskText,
                            SizedBox(height: 12.0),
                            ElevatedButton(
                              onPressed: () {
                                _navigateToRecommendation(context, diseaseName, riskLevel);
                              },
                              style: ElevatedButton.styleFrom(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                backgroundColor: riskButtonColor,
                                foregroundColor: Colors.white,
                              ),
                              child: Text(
                                "Recommendations",
                                style: TextStyle(
                                  fontFamily: 'RobotoCondensed',
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              );
            }).toList(),

            // Extra space before the bottom
            SizedBox(height: 24.0),

            // 'Want to go back?' text
            Center(
              child: Text(
                "Back to the Main Menu",
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontFamily: 'RobotoCondensed',
                  fontSize: 19,

                  color: Color(0xFF2A2F30),
                ),
              ),
            ),
            SizedBox(height: 8.0),

            // Main Menu button
            Center(
              child: ElevatedButton(
                onPressed: () {
                  Navigator.pop(context); // Or push to your main screen
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color(0xFF353A3C),
                  foregroundColor: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                child: Text(
                  "Back",
                  style: TextStyle(
                    fontFamily: 'RobotoCondensed',
                    fontSize: 23,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

