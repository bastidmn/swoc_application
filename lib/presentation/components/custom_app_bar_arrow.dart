import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:swoc_application/constants/constants.dart';

class CustomAppBarArrow extends StatelessWidget {
  CustomAppBarArrow({
    this.height,
    this.width,
    this.isSettingsPage,
    this.title,
    this.onTap,
  });

  final double height;
  final double width;
  final bool isSettingsPage;
  final String title;
  final Function onTap;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height * 0.08,
      width: width,
      decoration: BoxDecoration(
        color: primaryColor,
      ),
      child: Row(
        children: [
          GestureDetector(
            child: Tooltip(
              message: 'Zurück',
              textStyle: GoogleFonts.sourceSansPro(
                fontSize: height * 0.03,
                color: primaryTextColor,
              ),
              child: Padding(
                padding: EdgeInsets.only(
                  left: width * 0.03,
                  right: width * 0.03,
                ),
                child: Icon(
                  Icons.arrow_back_outlined,
                  color: secondaryColor,
                  size: height * 0.045,
                ),
              ),
            ),
            onTap: () => Navigator.pop(context),
          ),
          Text(
            title,
            style: GoogleFonts.notoSans(
              fontSize: height * 0.04,
              fontWeight: FontWeight.w800,
              color: primaryTextColor,
            ),
          ),
          Spacer(),
          GestureDetector(
            child: Tooltip(
              message: (isSettingsPage) ? 'Hilfe' : 'Einstellungen',
              textStyle: GoogleFonts.sourceSansPro(
                fontSize: height * 0.03,
                color: primaryTextColor,
              ),
              child: Padding(
                padding: EdgeInsets.only(right: width * 0.03),
                child: Icon(
                  (isSettingsPage)
                      ? Icons.help_outline_sharp
                      : Icons.settings_sharp,
                  color: secondaryColor,
                  size: height * 0.045,
                ),
              ),
            ),
            onTap: () => (isSettingsPage)
                ? Navigator.pushNamed(context, '/help')
                : Navigator.pushNamed(context, '/settings'),
          ),
        ],
      ),
    );
  }
}
