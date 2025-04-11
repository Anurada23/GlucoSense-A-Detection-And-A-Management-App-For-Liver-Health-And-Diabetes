import 'dart:io';
import 'package:app_gluco_sense/screens/riskScreen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/services.dart';
import 'dart:ui';
import 'package:google_fonts/google_fonts.dart';
import 'package:image_picker/image_picker.dart';

class MyAppSGPT extends StatefulWidget {
  @override
  _MyAppSGPTSState createState() => _MyAppSGPTSState();
}

class _MyAppSGPTSState extends State<MyAppSGPT> {
  final TOTALController = TextEditingController();
  final ALBUMINController = TextEditingController();
  final GLOBULINController = TextEditingController();
  final BILIRUBINController = TextEditingController();
  final ALKController = TextEditingController();
  final ALTController = TextEditingController();
  final ASTController = TextEditingController();
  final GAMMAController = TextEditingController();
  final RATIOController = TextEditingController();
  final _formKey = GlobalKey<FormState>();
  final Map<String, List<double>> normalRanges = {
    'Total_Protein': [60.0, 83.0], // g/L
    'Albumin': [35.0, 50.0], // g/L
    'Globulin': [25.0, 33.0], // g/L
    'A_G_Ratio': [0.8, 2.3],
    'Bilirubin': [0.1, 1.2], // mg/dL
    'Alkaline_Phosphatase': [98.0, 258.0], // U/L
    'ALT_SGPT': [1.0, 40.0], // U/L
    'AST_SGOT': [1.0, 40.0], // U/L
    'Gamma_GT': [0.1, 49.0], // U/L
  };

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery
        .of(context)
        .size
        .width;
    return Scaffold(
      body: Container(
          width: double.infinity,
          height: 870,
          clipBehavior: Clip.antiAlias,
          decoration: BoxDecoration(color: Colors.white),
          child: Stack(
            children: [
              //*****************************************background light ash frame
              Positioned(
                left: 0,
                top: 68,
                child: Container(
                  width: 409,
                  height: 779,
                  decoration: ShapeDecoration(
                    color: Color(0xFFFFFFFF),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(52),
                    ),
                  ),
                ),
              ),
              //******************************************************big white box
              Positioned(
                left: 24,
                top: 205,
                child: Container(
                  width: 363,
                  height: 543,
                  decoration: BoxDecoration(
                    color: Color(0xFFD9D9D9),
                    borderRadius: BorderRadius.circular(6),
                    border: Border.all(
                      color: Colors.grey, // Grey border
                      width: 1.5, // Adjust thickness
                    ),
                  ),
                ),
              ),
              //************************************************ top timeline photo
              Positioned(
                left: 0,
                top: -119,
                child: Container(
                  width: 412,
                  height: 281,
                  decoration: ShapeDecoration(
                    image: DecorationImage(
                      image: AssetImage(
                        'assets/page-1/images/Samantha-Weiser 1.png',
                      ),
                      fit: BoxFit.fill,
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 33,
                top: 40,
                child: Row(
                  children: [
                    Text(
                      'GLUCOSENSE',
                      style: GoogleFonts.getFont(
                        'Bodoni Moda',
                        fontSize: 45,
                        fontWeight: FontWeight.w600,
                        height: 1.0075,
                        color: Color(0xffffffff),
                      ),
                      textAlign: TextAlign.center,
                    ),
                    SizedBox(width: 10), // Space between text and icon
                    Image.asset(
                      'assets/page-1/images/Xbox Cross.png',
                      width: 42,
                      height: 43,
                    ),
                  ],
                ),
              ),

              //******************************************************** slogan
              Positioned(
                left: 61,
                top: 103,
                child: SizedBox(
                  width: 350,
                  child: Text(
                    'Know the Signs, Take Control.',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 22,
                      fontFamily: 'Roboto Condensed',
                      height: 0,
                    ),
                  ),
                ),
              ),

              //*****************************************kotuwa 1 sticker
              // Positioned(
              //   left: 167,
              //   top: 345,
              //   child: Container(
              //     width: 90,
              //     height: 90,
              //     decoration: BoxDecoration(
              //       image: DecorationImage(
              //         image: AssetImage(
              //           'assets/page-1/images/Full Image.png',
              //         ),
              //         fit: BoxFit.contain,
              //       ),
              //     ),
              //   ),
              // ),

              Positioned(
                left: 70,
                top: 169,
                child: SizedBox(
                  width: 290,
                  child: Text(
                    'Enter your report values here',
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 20,
                      fontFamily: 'Roboto Condensed',
                      fontWeight: FontWeight.bold,
                      height: 0,
                    ),
                  ),
                ),
              ),

              // Text fields with validations ****************************************************************
              Form(
                key: _formKey,
                child: Stack(
                  children: [
                    Positioned(
                      left: 31,
                      top: 215,
                      child: SizedBox(
                        height: 42,
                        width: 347,
                        child: TextFormField(
                          controller: TOTALController,
                          decoration: InputDecoration(
                            labelText: 'SERUM TOTAL PROTEIN',
                            labelStyle: GoogleFonts.robotoCondensed(
                              fontSize: 20,
                              fontWeight: FontWeight.w400,
                              height: 1.1725,
                              color: Color(0xff807e7e),
                            ),
                            filled: true,
                            fillColor: Color(0xfff3efef),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(12),
                              borderSide: BorderSide.none,
                            ),
                            contentPadding: EdgeInsets.fromLTRB(21, 23, 21, 16),
                          ),
                          keyboardType:
                          TextInputType.numberWithOptions(decimal: true),
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Please fill this empty field';
                            }
                            if (double.tryParse(value) == null) {
                              return 'Enter a valid number';
                            }
                            return null;
                          },
                        ),
                      ),
                    ),
                    Positioned(
                      left: 31,
                      top: 275,
                      child: SizedBox(
                        height: 42,
                        width: 347,
                        child: TextFormField(
                          controller: ALBUMINController,
                          decoration: InputDecoration(
                            labelText: 'SERUM ALBUMIN',
                            labelStyle: GoogleFonts.robotoCondensed(
                              fontSize: 20,
                              fontWeight: FontWeight.w400,
                              height: 1.1725,
                              color: Color(0xff807e7e),
                            ),
                            filled: true,
                            fillColor: Color(0xfff3efef),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(12),
                              borderSide: BorderSide.none,
                            ),
                            contentPadding: EdgeInsets.fromLTRB(21, 23, 21, 16),
                          ),
                          keyboardType:
                          TextInputType.numberWithOptions(decimal: true),
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Please fill this empty field';
                            }
                            if (double.tryParse(value) == null) {
                              return 'Enter a valid number';
                            }
                            return null;
                          },
                        ),
                      ),
                    ),
                    Positioned(
                      left: 31,
                      top: 335,
                      child: SizedBox(
                        height: 42,
                        width: 347, // You can adjust the width as needed
                        child: TextFormField(
                          controller: GLOBULINController,
                          decoration: InputDecoration(
                            labelText: 'SERUM GLOBULIN',
                            labelStyle: GoogleFonts.robotoCondensed(
                              fontSize: 20,
                              fontWeight: FontWeight.w400,
                              height: 1.1725,
                              color: Color(0xff807e7e),
                            ),
                            filled: true,
                            fillColor: Color(0xfff3efef),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(12),
                              borderSide: BorderSide.none,
                            ),
                            contentPadding: EdgeInsets.fromLTRB(21, 23, 21, 16),
                          ),
                          keyboardType:
                          TextInputType.numberWithOptions(decimal: true),
                          validator: (value) {
                            if (value == null || value
                                .trim()
                                .isEmpty) {
                              return 'Please fill this empty field';
                            }
                            if (double.tryParse(value) == null) {
                              return 'Enter a valid number';
                            }
                            return null;
                          },
                        ),
                      ),
                    ),
                    Positioned(
                      left: 31,
                      top: 395,
                      child: SizedBox(
                        height: 42,
                        width: 347, // You can adjust the width as needed
                        child: TextFormField(
                          controller: RATIOController,
                          decoration: InputDecoration(
                            labelText: 'A/G RATIO',
                            labelStyle: GoogleFonts.robotoCondensed(
                              fontSize: 20,
                              fontWeight: FontWeight.w400,
                              height: 1.1725,
                              color: Color(0xff807e7e),
                            ),
                            filled: true,
                            fillColor: Color(0xfff3efef),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(12),
                              borderSide: BorderSide.none,
                            ),
                            contentPadding: EdgeInsets.fromLTRB(21, 23, 21, 16),
                          ),
                          keyboardType:
                          TextInputType.numberWithOptions(decimal: true),
                          validator: (value) {
                            if (value == null || value
                                .trim()
                                .isEmpty) {
                              return 'Please fill this empty field';
                            }
                            if (double.tryParse(value) == null) {
                              return 'Enter a valid number';
                            }
                            return null;
                          },
                        ),
                      ),
                    ),
                    Positioned(
                      left: 31,
                      top: 455,
                      child: SizedBox(
                        height: 42,
                        width: 347, // You can adjust the width as needed
                        child: TextFormField(
                          controller: BILIRUBINController,
                          decoration: InputDecoration(
                            labelText: 'SERUM BILIRUBIN - TOTAL',
                            labelStyle: GoogleFonts.robotoCondensed(
                              fontSize: 20,
                              fontWeight: FontWeight.w400,
                              height: 1.1725,
                              color: Color(0xff807e7e),
                            ),
                            filled: true,
                            fillColor: Color(0xfff3efef),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(12),
                              borderSide: BorderSide.none,
                            ),
                            contentPadding: EdgeInsets.fromLTRB(21, 23, 21, 16),
                          ),
                          keyboardType:
                          TextInputType.numberWithOptions(decimal: true),
                          validator: (value) {
                            if (value == null || value
                                .trim()
                                .isEmpty) {
                              return 'Please fill this empty fields';
                            }
                            if (double.tryParse(value) == null) {
                              return 'Enter a valid number';
                            }
                            return null;
                          },
                        ),
                      ),
                    ),
                    Positioned(
                      left: 31,
                      top: 515,
                      child: SizedBox(
                        height: 42,
                        width: 347, // You can adjust the width as needed
                        child: TextFormField(
                          controller: ALKController,
                          decoration: InputDecoration(
                            labelText: 'SERUM ALK. PHOSPHATASE',
                            labelStyle: GoogleFonts.robotoCondensed(
                              fontSize: 20,
                              fontWeight: FontWeight.w400,
                              height: 1.1725,
                              color: Color(0xff807e7e),
                            ),
                            filled: true,
                            fillColor: Color(0xfff3efef),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(12),
                              borderSide: BorderSide.none,
                            ),
                            contentPadding: EdgeInsets.fromLTRB(21, 23, 21, 16),
                          ),
                          keyboardType:
                          TextInputType.numberWithOptions(decimal: true),
                          validator: (value) {
                            if (value == null || value
                                .trim()
                                .isEmpty) {
                              return 'Please fill this empty field';
                            }
                            if (double.tryParse(value) == null) {
                              return 'Enter a valid number';
                            }
                            return null;
                          },
                        ),
                      ),
                    ),
                    Positioned(
                      left: 31,
                      top: 575,
                      child: SizedBox(
                        height: 42,
                        width: 347, // You can adjust the width as needed
                        child: TextFormField(
                          controller: ALTController,
                          decoration: InputDecoration(
                            labelText: 'SERUM ALT (S.G.P.T.)',
                            labelStyle: GoogleFonts.robotoCondensed(
                              fontSize: 20,
                              fontWeight: FontWeight.w400,
                              height: 1.1725,
                              color: Color(0xff807e7e),
                            ),
                            filled: true,
                            fillColor: Color(0xfff3efef),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(12),
                              borderSide: BorderSide.none,
                            ),
                            contentPadding: EdgeInsets.fromLTRB(21, 23, 21, 16),
                          ),
                          keyboardType:
                          TextInputType.numberWithOptions(decimal: true),
                          validator: (value) {
                            if (value == null || value
                                .trim()
                                .isEmpty) {
                              return 'Please fill this empty field';
                            }
                            if (double.tryParse(value) == null) {
                              return 'Enter a valid number';
                            }
                            return null;
                          },
                        ),
                      ),
                    ),
                    Positioned(
                      left: 31,
                      top: 635,
                      child: SizedBox(
                        height: 42,
                        width: 347, // You can adjust the width as needed
                        child: TextFormField(
                          controller: ASTController,
                          decoration: InputDecoration(
                            labelText: 'SERUM AST (S.G.O.T.)',
                            labelStyle: GoogleFonts.robotoCondensed(
                              fontSize: 20,
                              fontWeight: FontWeight.w400,
                              height: 1.1725,
                              color: Color(0xff807e7e),
                            ),
                            filled: true,
                            fillColor: Color(0xfff3efef),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(12),
                              borderSide: BorderSide.none,
                            ),
                            contentPadding: EdgeInsets.fromLTRB(21, 23, 21, 16),
                          ),
                          keyboardType:
                          TextInputType.numberWithOptions(decimal: true),
                          validator: (value) {
                            if (value == null || value
                                .trim()
                                .isEmpty) {
                              return 'Please fill this empty field';
                            }
                            if (double.tryParse(value) == null) {
                              return 'Enter a valid number';
                            }
                            return null;
                          },
                        ),
                      ),
                    ),
                    Positioned(
                      left: 31,
                      top: 695,
                      child: SizedBox(
                        height: 42,
                        width: 347, // You can adjust the width as needed
                        child: TextFormField(
                          controller: GAMMAController,
                          decoration: InputDecoration(
                            labelText: 'SERUM GAMMA-GT',
                            labelStyle: GoogleFonts.robotoCondensed(
                              fontSize: 20,
                              fontWeight: FontWeight.w400,
                              height: 1.1725,
                              color: Color(0xff807e7e),
                            ),
                            filled: true,
                            fillColor: Color(0xfff3efef),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(12),
                              borderSide: BorderSide.none,
                            ),
                            contentPadding: EdgeInsets.fromLTRB(21, 23, 21, 16),
                          ),
                          keyboardType:
                          TextInputType.numberWithOptions(decimal: true),
                          validator: (value) {
                            if (value == null || value
                                .trim()
                                .isEmpty) {
                              return 'Please fill this empty field';
                            }
                            if (double.tryParse(value) == null) {
                              return 'Enter a valid number';
                            }
                            return null;
                          },
                        ),
                      ),
                    ),
                  ],
                ),
              ),

              Positioned(
                left: 265,
                top: 782,
                child: ElevatedButton(
                  onPressed: () {
                    // if (_formKey.currentState!.validate()) {
                    //   // All fields are valid (non-empty and valid doubles)
                    //   assessLiverDiseaseRisk();
                    // } else {
                    //   // At least one field is invalid — errors will show automatically
                    // }
                    if (_formKey.currentState!.validate()) {
                      // Parse input values to doubles
                      Map<String, double> biomarkerValues = {
                        'Total_Protein': double.parse(TOTALController.text),
                        'Albumin': double.parse(ALBUMINController.text),
                        'Globulin': double.parse(GLOBULINController.text),
                        'A_G_Ratio': double.parse(RATIOController.text),
                        'Bilirubin': double.parse(BILIRUBINController.text),
                        'Alkaline_Phosphatase':
                        double.parse(ALKController.text),
                        'ALT_SGPT': double.parse(ALTController.text),
                        'AST_SGOT': double.parse(ASTController.text),
                        'Gamma_GT': double.parse(GAMMAController.text),
                      };

                      // Assess liver disease risk
                      //assessLiverDiseaseRisk(biomarkerValues);

                      // Calculate risk and get the results map.
                      Map<String, String> results = assessLiverDiseaseRisk(biomarkerValues);

                      // Navigate to the new ResultsScreen.
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => ResultsScreen2(results: results),
                        ),
                      );


                    } else {

                      // ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('Please correct the errors in the form')));
                    }
                  },
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    //Color(0xff6e6363)  Colors.white
                    foregroundColor: Colors.white,
                    padding: EdgeInsets.all(0.0),
                    backgroundColor: Color(0xfff99155),
                    fixedSize: Size(108, 49),
                    textStyle: TextStyle(
                      fontSize: 26,
                      fontWeight: FontWeight.w700,
                      height: 1.1725,
                    ),
                  ),
                  child: Text('Analyze'),
                ),
              ),
              Positioned(
                left: 49,
                top: 782,
                child: ElevatedButton(
                  onPressed: () {
                    //pickImage();
                    // Navigator.push(
                    //     context,
                    //     //MyApp5 MyApp2
                    //     MaterialPageRoute(builder: (context) => MyApp5())
                    // );
                  },
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    //Color(0xff6e6363)  Colors.white B6BBBC
                    foregroundColor: Color(0xffffffff),
                    padding: EdgeInsets.all(0.0),
                    backgroundColor: Color(0xff707375),
                    fixedSize: Size(108, 49),
                    textStyle: TextStyle(
                      fontSize: 26,
                      fontWeight: FontWeight.w700,
                      height: 1.1725,
                    ),
                  ),
                  child: Text('Back'),
                ),
              ),
            ],
          )),
    );
  }


  // Your existing assessLiverDiseaseRisk function now returns a Map of disease results.
  Map<String, String> assessLiverDiseaseRisk(Map<String, double> biomarkerValues) {
    // Provided normal ranges (SI units)
    final Map<String, List<double>> normalRanges = {
      'Total_Protein': [60.0, 83.0], // g/L
      'Albumin': [35.0, 50.0],       // g/L
      'Globulin': [25.0, 33.0],      // g/L
      'A_G_Ratio': [0.8, 2.3],       // no unit
      'Bilirubin': [0.1, 1.2],       // mg/dL
      'Alkaline_Phosphatase': [98.0, 258.0], // U/L
      'ALT_SGPT': [1.0, 40.0],       // U/L
      'AST_SGOT': [1.0, 40.0],       // U/L
      'Gamma_GT': [0.1, 49.0],       // U/L
    };

    // Define diseases and their associated biomarkers
    final diseases = {
      'Alcoholic Fatty Liver Disease (AFLD)': [
        'AST_SGOT',
        'ALT_SGPT',
        'Gamma_GT',
        'Alkaline_Phosphatase',
        'Albumin',
        'Bilirubin',
        'A_G_Ratio'
      ],
      'Non-Alcoholic Fatty Liver Disease (NAFLD)': [
        'ALT_SGPT',
        'AST_SGOT',
        'Alkaline_Phosphatase',
        'Gamma_GT',
        'Albumin',
        'Bilirubin'
      ],
      'Cirrhosis': [
        'AST_SGOT',
        'ALT_SGPT',
        'Albumin',
        'Bilirubin',
        'A_G_Ratio',
        'Alkaline_Phosphatase'
      ],
      'Cholestatic Liver Disease': [
        'Alkaline_Phosphatase',
        'Gamma_GT',
        'Bilirubin',
        'Albumin',
        'A_G_Ratio',
        'ALT_SGPT',
        'AST_SGOT'
      ],
      'Hepatitis': [
        'ALT_SGPT',
        'AST_SGOT',
        'Bilirubin',
        'Albumin',
        'A_G_Ratio'
      ],
    };

    // This map will store results for each disease as a string
    Map<String, String> results = {};

    // Loop through each disease to assess risk.
    diseases.forEach((disease, biomarkers) {
      int riskScore = 0;

      print('\n$disease biomarker status:');

      switch (disease) {
        case 'Alcoholic Fatty Liver Disease (AFLD)': {
          // High Priority Biomarkers:
          if (biomarkerValues.containsKey('AST_SGOT') &&
              biomarkerValues.containsKey('ALT_SGPT')) {
            double ast = biomarkerValues['AST_SGOT']!;
            double alt = biomarkerValues['ALT_SGPT']!;
            double ratio = ast / alt;
            if (ratio > 1.5) {
              print('AST/ALT Ratio (De Ritis): Abnormally Deviated (Value: $ratio)');
              riskScore += 1;
            } else {
              print('AST/ALT Ratio (De Ritis): Normal (Value: $ratio)');
            }
          }
          // 2. ALT_SGPT: High if above upper limit
          if (biomarkerValues.containsKey('ALT_SGPT')) {
            double alt = biomarkerValues['ALT_SGPT']!;
            if (alt > normalRanges['ALT_SGPT']![1]) {
              print('ALT_SGPT: Abnormally Deviated (Value: $alt)');
              riskScore += 1;
            } else {
              print('ALT_SGPT: Normal (Value: $alt)');
            }
          }
          if (biomarkerValues.containsKey('Gamma_GT')) {
            double ggt = biomarkerValues['Gamma_GT']!;
            if (ggt > normalRanges['Gamma_GT']![1]) {
              print('Gamma_GT: High (Value: $ggt)');
              riskScore += 1;
            } else {
              print('Gamma_GT: Normal (Value: $ggt)');
            }
          }
          if (biomarkerValues.containsKey('Bilirubin')) {
            double bilirubin = biomarkerValues['Bilirubin']!;
            // High if Bilirubin > 5 times upper normal (here, > 5 * 1.2 = 6.0 mg/dL)
            if (bilirubin > 5 * normalRanges['Bilirubin']![1]) {
              print('Bilirubin: Abnormally Deviated (Value: $bilirubin)');
              riskScore += 1;
            } else {
              print('Bilirubin: Normal (Value: $bilirubin)');
            }
          }
          // Medium Priority:
          if (biomarkerValues.containsKey('Alkaline_Phosphatase')) {
            double alp = biomarkerValues['Alkaline_Phosphatase']!;
            if (alp > normalRanges['Alkaline_Phosphatase']![1]) {
              print('Alkaline Phosphatase: Medium abnormality (Value: $alp)');
              riskScore += 1;
            } else {
              print('Alkaline Phosphatase: Normal (Value: $alp)');
            }
          }
          if (biomarkerValues.containsKey('Albumin')) {
            double albumin = biomarkerValues['Albumin']!;
            if (albumin < normalRanges['Albumin']![0]) {
              print('Albumin: Medium abnormality (Value: $albumin)');
              riskScore += 1;
            } else {
              print('Albumin: Normal (Value: $albumin)');
            }
          }
          // Low Priority:
          if (biomarkerValues.containsKey('A_G_Ratio')) {
            double agRatio = biomarkerValues['A_G_Ratio']!;
            if (agRatio < normalRanges['A_G_Ratio']![0] ||
                agRatio > normalRanges['A_G_Ratio']![1]) {
              print('A/G Ratio: Low abnormal (Value: $agRatio)');
              riskScore += 1;
            } else {
              print('A/G Ratio: Normal (Value: $agRatio)');
            }
          }
          break;
        }
        case 'Non-Alcoholic Fatty Liver Disease (NAFLD)': {
          // High Priority: ALT and AST if above normal
          if (biomarkerValues.containsKey('ALT_SGPT')) {
            double alt = biomarkerValues['ALT_SGPT']!;
            if (alt > normalRanges['ALT_SGPT']![1]) {
              print('ALT_SGPT: Abnormally Deviated (Value: $alt)');
              riskScore += 1;
            } else {
              print('ALT_SGPT: Normal (Value: $alt)');
            }
          }
          if (biomarkerValues.containsKey('AST_SGOT')) {
            double ast = biomarkerValues['AST_SGOT']!;
            if (ast > normalRanges['AST_SGOT']![1]) {
              print('AST_SGOT: Abnormally Deviated (Value: $ast)');
              riskScore += 1;
            } else {
              print('AST_SGOT: Normal (Value: $ast)');
            }
          }
          // Medium Priority:
          if (biomarkerValues.containsKey('Alkaline_Phosphatase')) {
            double alp = biomarkerValues['Alkaline_Phosphatase']!;
            if (alp > normalRanges['Alkaline_Phosphatase']![1]) {
              print('Alkaline Phosphatase: Medium abnormal (Value: $alp)');
              riskScore += 1;
            } else {
              print('Alkaline Phosphatase: Normal (Value: $alp)');
            }
          }
          if (biomarkerValues.containsKey('Gamma_GT')) {
            double ggt = biomarkerValues['Gamma_GT']!;
            if (ggt > normalRanges['Gamma_GT']![1]) {
              print('Gamma_GT: Medium abnormality (Value: $ggt)');
              riskScore += 1;
            } else {
              print('Gamma_GT: Normal (Value: $ggt)');
            }
          }
          // Low Priority:
          if (biomarkerValues.containsKey('Bilirubin')) {
            double bilirubin = biomarkerValues['Bilirubin']!;
            if (bilirubin < normalRanges['Bilirubin']![0]) {
              print('Bilirubin: Low abnormality (Value: $bilirubin)');
              riskScore += 1;
            } else {
              print('Bilirubin: Normal (Value: $bilirubin)');
            }
          }
          if (biomarkerValues.containsKey('Albumin')) {
            double albumin = biomarkerValues['Albumin']!;
            if (albumin < normalRanges['Albumin']![0]) {
              print('Albumin: Low abnormality (Value: $albumin)');
              riskScore += 1;
            } else {
              print('Albumin: Normal (Value: $albumin)');
            }
          }
          break;
        }
        case 'Cirrhosis': {
          // High Priority:
          if (biomarkerValues.containsKey('Bilirubin')) {
            double bilirubin = biomarkerValues['Bilirubin']!;
            if (bilirubin > normalRanges['Bilirubin']![1]) {
              print('Bilirubin: Abnormally Deviated (Value: $bilirubin)');
              riskScore += 1;
            } else {
              print('Bilirubin: Normal (Value: $bilirubin)');
            }
          }
          if (biomarkerValues.containsKey('Albumin')) {
            double albumin = biomarkerValues['Albumin']!;
            if (albumin < normalRanges['Albumin']![0]) {
              print('Albumin: High priority abnormal (Low Albumin) (Value: $albumin)');
              riskScore += 1;
            } else {
              print('Albumin: Normal (Value: $albumin)');
            }
          }
          if (biomarkerValues.containsKey('AST_SGOT') &&
              biomarkerValues.containsKey('ALT_SGPT')) {
            double ast = biomarkerValues['AST_SGOT']!;
            double alt = biomarkerValues['ALT_SGPT']!;
            double ratio = ast / alt;
            if (ratio > 1) {
              print('AST/ALT Ratio: Abnormally Deviated (Value: $ratio)');
              riskScore += 1;
            } else {
              print('AST/ALT Ratio: Normal (Value: $ratio)');
            }
          }
          // Medium Priority:
          if (biomarkerValues.containsKey('Alkaline_Phosphatase')) {
            double alp = biomarkerValues['Alkaline_Phosphatase']!;
            if (alp > normalRanges['Alkaline_Phosphatase']![1]) {
              print('Alkaline Phosphatase: Medium abnormal (Value: $alp)');
              riskScore += 1;
            } else {
              print('Alkaline Phosphatase: Normal (Value: $alp)');
            }
          }
          break;
        }
        case 'Cholestatic Liver Disease': {
          // High Priority:
          if (biomarkerValues.containsKey('Alkaline_Phosphatase')) {
            double alp = biomarkerValues['Alkaline_Phosphatase']!;
            if (alp > normalRanges['Alkaline_Phosphatase']![1]) {
              print('Alkaline Phosphatase: High (Value: $alp)');
              riskScore += 1;
            } else {
              print('Alkaline Phosphatase: Normal (Value: $alp)');
            }
          }
          if (biomarkerValues.containsKey('Gamma_GT')) {
            double ggt = biomarkerValues['Gamma_GT']!;
            if (ggt > normalRanges['Gamma_GT']![1]) {
              print('Gamma_GT: High (Value: $ggt)');
              riskScore += 1;
            } else {
              print('Gamma_GT: Normal (Value: $ggt)');
            }
          }
          if (biomarkerValues.containsKey('Bilirubin')) {
            double bilirubin = biomarkerValues['Bilirubin']!;
            if (bilirubin > normalRanges['Bilirubin']![1]) {
              print('Bilirubin: Abnormally Deviated (Value: $bilirubin)');
              riskScore += 1;
            } else {
              print('Bilirubin: Normal (Value: $bilirubin)');
            }
          }
          // Medium Priority:
          if (biomarkerValues.containsKey('ALT_SGPT')) {
            double alt = biomarkerValues['ALT_SGPT']!;
            if (alt > normalRanges['ALT_SGPT']![1] && alt <= normalRanges['ALT_SGPT']![1] * 1.5) {
              print('ALT_SGPT: Medium abnormal (Value: $alt)');
              riskScore += 1;
            } else {
              print('ALT_SGPT: Normal (Value: $alt)');
            }
          }
          if (biomarkerValues.containsKey('AST_SGOT')) {
            double ast = biomarkerValues['AST_SGOT']!;
            if (ast > normalRanges['AST_SGOT']![1] && ast <= normalRanges['AST_SGOT']![1] * 1.5) {
              print('AST_SGOT: Medium abnormality (Value: $ast)');
              riskScore += 1;
            } else {
              print('AST_SGOT: Normal (Value: $ast)');
            }
          }
          // Low Priority:
          if (biomarkerValues.containsKey('Albumin')) {
            double albumin = biomarkerValues['Albumin']!;
            if (albumin < normalRanges['Albumin']![0]) {
              print('Albumin: Low abnormality (Value: $albumin)');
              riskScore += 1;
            } else {
              print('Albumin: Normal (Value: $albumin)');
            }
          }
          if (biomarkerValues.containsKey('A_G_Ratio')) {
            double agRatio = biomarkerValues['A_G_Ratio']!;
            if (agRatio < normalRanges['A_G_Ratio']![0] ||
                agRatio > normalRanges['A_G_Ratio']![1]) {
              print('A/G Ratio: Low abnormal (Value: $agRatio)');
              riskScore += 1;
            } else {
              print('A/G Ratio: Normal (Value: $agRatio)');
            }
          }
          break;
        }
        case 'Hepatitis': {
          // High Priority:
          if (biomarkerValues.containsKey('ALT_SGPT')) {
            double alt = biomarkerValues['ALT_SGPT']!;
            if (alt > normalRanges['ALT_SGPT']![1]) {
              print('ALT_SGPT: Abnormally Deviated (Value: $alt)');
              riskScore += 1;
            } else {
              print('ALT_SGPT: Normal (Value: $alt)');
            }
          }
          if (biomarkerValues.containsKey('AST_SGOT')) {
            double ast = biomarkerValues['AST_SGOT']!;
            if (ast > normalRanges['AST_SGOT']![1]) {
              print('AST_SGOT: Abnormally Deviated (Value: $ast)');
              riskScore += 1;
            } else {
              print('AST_SGOT: Normal (Value: $ast)');
            }
          }
          // Medium Priority:
          if (biomarkerValues.containsKey('Bilirubin')) {
            double bilirubin = biomarkerValues['Bilirubin']!;
            if (bilirubin > normalRanges['Bilirubin']![1]) {
              print('Bilirubin: Medium abnormality (Value: $bilirubin)');
              riskScore += 1;
            } else {
              print('Bilirubin: Normal (Value: $bilirubin)');
            }
          }
          // Low Priority:
          if (biomarkerValues.containsKey('Albumin')) {
            double albumin = biomarkerValues['Albumin']!;
            if (albumin < normalRanges['Albumin']![0]) {
              print('Albumin: Low abnormality (Value: $albumin)');
              riskScore += 1;
            } else {
              print('Albumin: Normal (Value: $albumin)');
            }
          }
          if (biomarkerValues.containsKey('A_G_Ratio')) {
            double agRatio = biomarkerValues['A_G_Ratio']!;
            if (agRatio < normalRanges['A_G_Ratio']![0] ||
                agRatio > normalRanges['A_G_Ratio']![1]) {
              print('A/G Ratio: Low abnormality (Value: $agRatio)');
              riskScore += 1;
            } else {
              print('A/G Ratio: Normal (Value: $agRatio)');
            }
          }
          break;
        }
        default:
          break;
      }

      // Determine overall risk level based on risk score
      String overallRisk;
      if (riskScore == 0) {
        overallRisk = 'healthy';
      } else if (riskScore == 1) {
        overallRisk = 'low';
      } else if (riskScore == 2) {
        overallRisk = 'medium';
      } else if (riskScore >= 3) {
        overallRisk = 'high';
      } else {
        overallRisk = 'unknown';
      }

      String result = '$disease risk level: $overallRisk (Risk Score: $riskScore)';
      print(result);

      // Add the result to our results map
      results[disease] = result;
    });

    // Return the aggregated results map
    return results;
  }

}
