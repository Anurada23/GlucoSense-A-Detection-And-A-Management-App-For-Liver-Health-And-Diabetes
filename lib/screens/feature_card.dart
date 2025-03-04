import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class FeatureCard extends StatelessWidget {
  final String icon;
  final String label;
  final Color backgroundColor;

  const FeatureCard({
    Key? key,
    required this.icon,
    required this.label,
    required this.backgroundColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 42, horizontal: 33),
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: BorderRadius.circular(18),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.network(
            icon,
            width: 68,
            fit: BoxFit.contain,
            semanticLabel: '$label icon',
          ),
          const SizedBox(height: 7),
          Text(
            label,
            style: GoogleFonts.robotoCondensed(
              fontSize: 20,
              fontWeight: FontWeight.w300,
              color: Colors.white,
            ),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}