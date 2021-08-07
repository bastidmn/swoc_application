import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class StartingPageRecommendationCard extends StatelessWidget {
  StartingPageRecommendationCard({
    this.primaryColor,
    this.primaryColorLight,
    this.primaryColorDark,
    this.primaryTextColor,
    this.primaryTextColorAlt,
    this.secondaryColor,
    this.secondaryColorDark,
    this.secondaryTextColor,
    this.secondaryTextColorAlt,
    this.color,
    this.width,
    this.height,
  });

  final Color primaryColor;
  final Color primaryColorLight;
  final Color primaryColorDark;
  final Color secondaryColor;
  final Color secondaryColorDark;
  final Color primaryTextColor;
  final Color primaryTextColorAlt;
  final Color secondaryTextColor;
  final Color secondaryTextColorAlt;
  final Color color;
  final double width;
  final double height;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: null,
      child: Padding(
        padding: EdgeInsets.only(left: width * 0.03),
        child: Container(
          width: width * 0.6,
          height: height * 0.22,
          decoration: BoxDecoration(
            color: secondaryColor,
            borderRadius: BorderRadius.all(
              Radius.circular(width * 0.01),
            ),
          ),
          child: Container(
            width: width * 0.6,
            height: height * 0.22,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(
                Radius.circular(width * 0.01),
              ),
              gradient: LinearGradient(
                begin: Alignment.topRight,
                end: Alignment.bottomLeft,
                colors: [
                  primaryColorDark,
                  primaryColor,
                  primaryColorLight,
                ],
              ),
            ),
            child: Padding(
              padding: EdgeInsets.only(
                top: height * 0.02,
                left: height * 0.03,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    '3er Reihe',
                    style: GoogleFonts.sourceSansPro(
                      color: primaryTextColor,
                      fontSize: height * 0.03,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    'Campus A',
                    style: GoogleFonts.sourceSansPro(
                      color: primaryTextColor,
                      fontSize: height * 0.03,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
