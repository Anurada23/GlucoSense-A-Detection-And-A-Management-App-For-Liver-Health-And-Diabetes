import 'package:flutter/material.dart';

import '../RecommendationScreens/AFLDRecommendationScreenLow.dart';

class ResultsScreen2 extends StatelessWidget {
  final Map<String, String> results;

  const ResultsScreen2({Key? key, required this.results}) : super(key: key);

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
      appBar: AppBar(title: Text("Liver Disease Analysis")),
      body: ListView(
        padding: EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 32.0),
        physics: AlwaysScrollableScrollPhysics(),
        children: results.entries.map((entry) {
          // Assume the result string contains the risk level like:
          // "Alcoholic Liver Disease risk level: low (Risk Score: 1)"
          // We'll parse it by splitting on ":" and " " (or use a more robust solution in a production app)
          String diseaseName = entry.key;
          String resultString = entry.value;
          String riskLevel = 'unknown';
          // This simplistic parsing assumes the risk level comes after "risk level:" and is separated by a space.
          List<String> parts = resultString.split("risk level:");
          if(parts.length > 1) {
            riskLevel = parts[1].split(" ")[1].trim().toLowerCase();
          }
          return Card(
            margin: EdgeInsets.only(bottom: 16.0),
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    diseaseName,
                    style: Theme.of(context).textTheme.titleLarge,
                  ),
                  SizedBox(height: 8.0),
                  Text(
                    resultString,
                    style: Theme.of(context).textTheme.titleMedium,
                  ),
                  SizedBox(height: 12.0),
                  ElevatedButton(
                    onPressed: () {
                      _navigateToRecommendation(context, diseaseName, riskLevel);
                    },
                    child: Text("Recommendations"),
                  ),
                ],
              ),
            ),
          );
        }).toList(),
      ),
    );
  }
}

