import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:swoc_application/constants/constants.dart';

class CustomActionButton extends StatelessWidget {
  final String text;
  final IconData icon;
  final Function onTap;

  CustomActionButton({
    this.text,
    this.icon,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    final double _height = MediaQuery.of(context).size.height;
    final double _width = MediaQuery.of(context).size.width;

    return GestureDetector(
      onTap: onTap,
      child: Material(
        elevation: 4.0,
        borderRadius: BorderRadius.circular(_height * 0.04),
        child: Container(
          height: _height * 0.08,
          width: _width * 0.66,
          decoration: BoxDecoration(
            color: accentColor,
            borderRadius: BorderRadius.all(
              Radius.circular(_height * 0.04),
            ),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              if (icon != null)
                Icon(
                  icon,
                  color: primaryTextColor,
                  size: _height * 0.04,
                ),
              if (icon != null)
                SizedBox(
                  width: _width * 0.02,
                ),
              Text(
                text,
                style: GoogleFonts.notoSans(
                  fontSize: _height * 0.03,
                  color: primaryTextColor,
                  fontWeight: FontWeight.bold,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
