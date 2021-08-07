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
      height: height * 0.09,
      width: width,
      decoration: BoxDecoration(
        color: primaryColor,
      ),
      child: Row(
        children: [
          //ghjTODO: Add Logo Image
          Padding(
            padding: EdgeInsets.all(height * 0.01),
            child: GestureDetector(
              child: Container(
                width: height * 0.08,
                height: height * 0.08,
                child: Icon(
                  Icons.arrow_back_outlined,
                  color: secondaryColor,
                  size: height * 0.04,
                ),
              ),
              onTap: onTap,
            ),
          ),
          Text(
            title,
            style: GoogleFonts.raleway(
              fontSize: height * 0.04,
              fontWeight: FontWeight.w800,
              color: primaryTextColor,
            ),
          ),
          Spacer(),
          Container(
            child: (isSettingsPage == true)
                ? GestureDetector(
                    onTap: () => Navigator.pushNamed(context, '/help'),
                    child: Padding(
                      padding: EdgeInsets.all(height * 0.01),
                      child: Container(
                        width: height * 0.08,
                        height: height * 0.08,
                        child: Icon(
                          Icons.help_outline_sharp,
                          color: secondaryColor,
                          size: height * 0.05,
                        ),
                      ),
                    ),
                  )
                : GestureDetector(
                    onTap: () => Navigator.pushNamed(context, '/settings'),
                    child: Padding(
                      padding: EdgeInsets.all(height * 0.01),
                      child: Container(
                        width: height * 0.08,
                        height: height * 0.08,
                        child: Icon(
                          Icons.settings_sharp,
                          color: secondaryColor,
                          size: height * 0.05,
                        ),
                      ),
                    ),
                  ),
          ),
        ],
      ),
    );
  }
}
