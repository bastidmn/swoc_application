import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:swoc_application/constants/constants.dart';

class GrammarTopicCard extends StatelessWidget {
  GrammarTopicCard({
    @required this.label,
    @required this.content,
    @required this.link,
  });

  final String label;
  final String content;
  final String link;

  @override
  Widget build(BuildContext context) {
    final double _height = MediaQuery.of(context).size.height;
    final double _width = MediaQuery.of(context).size.width;
    return Padding(
      padding: EdgeInsets.only(
        left: _width * 0.03,
        right: _width * 0.03,
        bottom: _width * 0.03,
      ),
      child: GestureDetector(
        child: Material(
          elevation: 4.0,
          borderRadius: BorderRadius.circular(_width * 0.025),
          child: Container(
            width: _width * 0.94,
            height: _height * 0.16,
            decoration: BoxDecoration(
              color: secondaryColor,
              borderRadius: BorderRadius.circular(_width * 0.025),
            ),
            child: Padding(
              padding: EdgeInsets.all(_width * 0.03),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Expanded(
                    child: Center(
                      child: Text(
                        label,
                        style: GoogleFonts.sourceSansPro(
                          fontSize: _width * 0.06,
                          // color: secondaryTextColor,
                          color: primaryColor,
                          fontWeight: FontWeight.w900,
                        ),
                      ),
                    ),
                  ),
                  Divider(
                    color: secondaryAltTextColor,
                  ),
                  Expanded(
                    child: Center(
                      child: Text(
                        content,
                        style: GoogleFonts.sourceSansPro(
                          fontSize: _width * 0.04,
                          color: secondaryTextColor,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        onTap: () => Navigator.pushNamed(context, '/'),
      ),
    );
  }
}
