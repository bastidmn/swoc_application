import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppBarScrollLabel extends StatelessWidget {
  AppBarScrollLabel({
    this.width,
    this.height,
    this.primaryColor,
    this.primaryLightColor,
    this.primaryDarkColor,
    this.primaryTextColor,
    this.primaryTextAltColor,
    this.secondaryColor,
    this.secondaryTextColor,
    this.label,
    this.content,
  });

  final double width;
  final double height;
  final Color primaryColor;
  final Color primaryLightColor;
  final Color primaryDarkColor;
  final Color primaryTextColor;
  final Color primaryTextAltColor;
  final Color secondaryColor;
  final Color secondaryTextColor;
  final String label;
  final Widget content;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: width * 0.03),
      child: Container(
        decoration: BoxDecoration(
          // gradient: LinearGradient(
          //   begin: Alignment.topCenter,
          //   end: Alignment.bottomCenter,
          //   colors: [
          //     primaryDarkColor,
          //     primaryColor,
          //   ],
          // ),
          color: Colors.transparent,
        ),
        height: height * 0.18,
        width: width,
        child: Column(
          children: [
            SizedBox(
              height: height * 0.08,
              child: Text(
                label,
                style: GoogleFonts.sourceSansPro(
                  color: secondaryTextColor,
                  fontSize: width * 0.12,
                  fontWeight: FontWeight.normal,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            SizedBox(
              height: height * 0.1,
              child: content,
            ),
          ],
        ),
      ),
    );
  }
}
