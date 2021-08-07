import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:swoc_application/constants/constants.dart';

import 'custom_small_action_button.dart';

class StartingPageLatestCard extends StatelessWidget {
  StartingPageLatestCard();

  @override
  Widget build(BuildContext context) {
    final double _height = MediaQuery.of(context).size.height;
    final double _width = MediaQuery.of(context).size.width;
    return Material(
      borderRadius: BorderRadius.all(Radius.circular(_width * 0.025)),
      elevation: 4.0,
      child: Container(
        height: _height * 0.25,
        width: _width * 0.94,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(
            Radius.circular(_width * 0.025),
          ),
          color: primaryColor,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: _width * 0.045),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    height: _height * 0.08,
                    width: _height * 0.08,
                    decoration: BoxDecoration(
                      color: secondaryColor,
                      borderRadius: BorderRadius.circular(_height * 0.04),
                    ),
                  ),
                  SizedBox(
                    width: _height * 0.02,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Schulaufgabe 1-45',
                        style: GoogleFonts.sourceSansPro(
                          color: primaryTextColor,
                          fontSize: _height * 0.03,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        'Campus A 1-42',
                        style: GoogleFonts.sourceSansPro(
                          fontSize: _height * 0.02,
                          color: primaryAltTextColor,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Row(
              children: [
                Expanded(
                  flex: 3,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Starke Vokabeln',
                        style: GoogleFonts.sourceSansPro(
                          fontSize: _height * 0.03,
                          color: primaryTextColor,
                        ),
                      ),
                      Text(
                        '10321/10700',
                        style: GoogleFonts.sourceSansPro(
                          fontSize: _height * 0.04,
                          fontWeight: FontWeight.bold,
                          color: primaryTextColor,
                        ),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  flex: 2,
                  child: Center(
                    child: CustomSmallActionButton(
                      icon: Icons.play_arrow,
                      onTap: () => Navigator.pushNamed(context, '/querypage'),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
