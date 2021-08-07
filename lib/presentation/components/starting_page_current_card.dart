import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class StartingPageCurrentCard extends StatelessWidget {
  StartingPageCurrentCard({
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
    return Container(
      height: height * 0.35,
      width: width * 0.94,
      child: Stack(
        children: [
          Container(

          ),
        ],
      ),
    );
  }
}
