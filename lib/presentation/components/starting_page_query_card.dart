import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class StartingPageQueryCard extends StatelessWidget {
  StartingPageQueryCard({
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
              padding: EdgeInsets.all(height * 0.02),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        height: height * 0.08,
                        width: height * 0.08,
                        decoration: BoxDecoration(
                          color: secondaryColor,
                          borderRadius: BorderRadius.circular(height * 0.04),
                        ),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            'Zuletzt:', //'Geöffnet:',
                            style: GoogleFonts.sourceSansPro(
                              fontSize: height * 0.02,
                              color: primaryTextColor,
                            ),
                          ),
                          Text(
                            '12.12.20',
                            style: GoogleFonts.sourceSansPro(
                              fontSize: height * 0.02,
                              color: primaryTextColorAlt,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(
                    height: height * 0.02,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            'Schulaufgabe 1-45',
                            style: GoogleFonts.sourceSansPro(
                              color: primaryTextColor,
                              fontSize: height * 0.028,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            'Campus A 1-42',
                            style: GoogleFonts.sourceSansPro(
                              fontSize: height * 0.02,
                              color: primaryTextColorAlt,
                            ),
                          ),
                        ],
                      ),
                    ],
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
