import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class NewQueryVocCard extends StatelessWidget {
  NewQueryVocCard({
    this.primaryColor,
    this.primaryColorDark,
    this.primaryColorLight,
    this.secondaryColor,
    this.secondaryColorDark,
    this.primaryTextColor,
    this.secondaryTextColor,
    this.height,
    this.width,
    this.vocabularyName,
  });

  final Color primaryColor;
  final Color primaryColorDark;
  final Color primaryColorLight;
  final Color secondaryColor;
  final Color secondaryColorDark;
  final Color primaryTextColor;

  // final Color primaryTextColorAlt;
  final Color secondaryTextColor;

  // final Color secondaryTextColorAlt;
  final double height;
  final double width;
  final String vocabularyName;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(
        width * 0.015,
      ),
      child: Container(
        height: width * 0.44,
        width: width * 0.44,
        decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.bottomLeft,
                end: Alignment.topRight,
                colors: [
                  primaryColorLight,
                  primaryColor,
                  primaryColorDark,
                ]),
            borderRadius: BorderRadius.all(Radius.circular(width * 0.01))),
        child: Padding(
          padding: EdgeInsets.all(width * 0.030),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: width * 0.22,
                    height: width * 0.22,
                    decoration: BoxDecoration(
                      color: secondaryColor,
                      borderRadius: BorderRadius.circular(width * 0.25),
                    ),
                  ),
                  Icon(
                    Icons.radio_button_checked,
                    color: secondaryColor,
                    size: height * 0.03,
                  ),
                  // Icon(
                  //   Icons.radio_button_unchecked,
                  //   color: secondaryColor,
                  //   size: height * 0.03,
                  // ),
                ],
              ),
              SizedBox(
                height: width * 0.02,
              ),
              Container(
                height: width * 0.17,
                width: width * 0.38,
                child: Center(
                  child: Text(
                    vocabularyName,
                    style: GoogleFonts.sourceSansPro(
                      color: primaryTextColor,
                      fontSize: height * 0.03,
                      fontWeight: FontWeight.bold,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
