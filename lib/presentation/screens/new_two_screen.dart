import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:swoc_application/constants/constants.dart';

class NewTwoScreen extends StatefulWidget {
  @override
  _NewTwoScreenState createState() => _NewTwoScreenState();
}

class _NewTwoScreenState extends State<NewTwoScreen> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return NotificationListener<OverscrollIndicatorNotification>(
      onNotification: (OverscrollIndicatorNotification overscroll) {
        overscroll.disallowGlow();
        return;
      },
      //TODO: Add Pictures
      child: ListView(
        children: [
          Padding(
            padding: EdgeInsets.only(
              top: width * 0.03,
            ),
            child: Center(
              child: Text(
                'Wähle die Wortschätze',
                style: GoogleFonts.raleway(
                  //exo2(
                  color: secondaryTextColor,
                  fontSize: height * 0.035,
                  fontWeight: FontWeight.w900,
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              bottom: width * 0.015,
            ),
            child: Center(
              child: Text(
                'Schritt 2 von 3',
                style: GoogleFonts.sourceSansPro(
                  //exo2(
                  color: secondaryTextColor,
                  fontSize: height * 0.03,
                  fontWeight: FontWeight.w900,
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              top: width * 0.03,
              left: width * 0.03,
              right: width * 0.03,
              bottom: width * 0.03,
            ),
            child: Material(
              borderRadius: BorderRadius.circular(width * 0.025),
              elevation: 4.0,
              child: Container(
                width: width * 0.94,
                decoration: BoxDecoration(
                  color: secondaryColor,
                  borderRadius: BorderRadius.circular(width * 0.025),
                ),
                child: Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: width * 0.06,
                  ),
                  child: Column(
                    children: [
                      SizedBox(
                        height: width * 0.03,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Alle Wortschätze',
                            style: GoogleFonts.sourceSansPro(
                              fontSize: height * 0.03,
                              color: primaryColor,
                            ),
                          ),
                          Icon(
                            Icons.keyboard_arrow_down,
                            color: secondaryAltTextColor,
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Alle Wortschätze (1-103)',
                            style: GoogleFonts.sourceSansPro(
                              fontSize: height * 0.025,
                              color: secondaryAltTextColor,
                            ),
                          ),
                          Icon(
                            Icons.radio_button_unchecked,
                            color: secondaryTextColor,
                            size: height * 0.025,
                          )
                        ],
                      ),
                      SizedBox(
                        height: width * 0.015,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            '10er Blöcke',
                            style: GoogleFonts.sourceSansPro(
                              fontSize: height * 0.03,
                              color: primaryColor,
                            ),
                          ),
                          Icon(
                            Icons.keyboard_arrow_down,
                            color: secondaryAltTextColor,
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            '1-10',
                            style: GoogleFonts.sourceSansPro(
                              fontSize: height * 0.025,
                              color: secondaryTextColor,
                            ),
                          ),
                          Icon(
                            Icons.radio_button_unchecked,
                            color: secondaryTextColor,
                            size: height * 0.025,
                          )
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            '11-20',
                            style: GoogleFonts.sourceSansPro(
                              fontSize: height * 0.025,
                              color: secondaryTextColor,
                            ),
                          ),
                          Icon(
                            Icons.radio_button_unchecked,
                            color: secondaryTextColor,
                            size: height * 0.025,
                          )
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            '21-30',
                            style: GoogleFonts.sourceSansPro(
                              fontSize: height * 0.025,
                              color: secondaryTextColor,
                            ),
                          ),
                          Icon(
                            Icons.radio_button_unchecked,
                            color: secondaryTextColor,
                            size: height * 0.025,
                          )
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            '31-40',
                            style: GoogleFonts.sourceSansPro(
                              fontSize: height * 0.025,
                              color: secondaryTextColor,
                            ),
                          ),
                          Icon(
                            Icons.radio_button_unchecked,
                            color: secondaryTextColor,
                            size: height * 0.025,
                          )
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            '41-50',
                            style: GoogleFonts.sourceSansPro(
                              fontSize: height * 0.025,
                              color: secondaryTextColor,
                            ),
                          ),
                          Icon(
                            Icons.radio_button_unchecked,
                            color: secondaryTextColor,
                            size: height * 0.025,
                          )
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            '51-60',
                            style: GoogleFonts.sourceSansPro(
                              fontSize: height * 0.025,
                              color: secondaryTextColor,
                            ),
                          ),
                          Icon(
                            Icons.radio_button_unchecked,
                            color: secondaryTextColor,
                            size: height * 0.025,
                          )
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            '61-70',
                            style: GoogleFonts.sourceSansPro(
                              fontSize: height * 0.025,
                              color: secondaryTextColor,
                            ),
                          ),
                          Icon(
                            Icons.radio_button_unchecked,
                            color: secondaryTextColor,
                            size: height * 0.025,
                          )
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            '71-80',
                            style: GoogleFonts.sourceSansPro(
                              fontSize: height * 0.025,
                              color: secondaryTextColor,
                            ),
                          ),
                          Icon(
                            Icons.radio_button_unchecked,
                            color: secondaryTextColor,
                            size: height * 0.025,
                          )
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            '81-90',
                            style: GoogleFonts.sourceSansPro(
                              fontSize: height * 0.025,
                              color: secondaryTextColor,
                            ),
                          ),
                          Icon(
                            Icons.radio_button_unchecked,
                            color: secondaryTextColor,
                            size: height * 0.025,
                          )
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            '91-100',
                            style: GoogleFonts.sourceSansPro(
                              fontSize: height * 0.025,
                              color: secondaryTextColor,
                            ),
                          ),
                          Icon(
                            Icons.radio_button_unchecked,
                            color: secondaryTextColor,
                            size: height * 0.025,
                          )
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            '101-103',
                            style: GoogleFonts.sourceSansPro(
                              fontSize: height * 0.025,
                              color: secondaryTextColor,
                            ),
                          ),
                          Icon(
                            Icons.radio_button_unchecked,
                            color: secondaryTextColor,
                            size: height * 0.025,
                          )
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            '10er Reihen',
                            style: GoogleFonts.sourceSansPro(
                              fontSize: height * 0.03,
                              color: primaryColor,
                            ),
                          ),
                          Icon(
                            Icons.keyboard_arrow_down,
                            color: secondaryAltTextColor,
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            '1, 11, 21, ...',
                            style: GoogleFonts.sourceSansPro(
                              fontSize: height * 0.025,
                              color: secondaryTextColor,
                            ),
                          ),
                          Icon(
                            Icons.radio_button_unchecked,
                            color: secondaryTextColor,
                            size: height * 0.025,
                          )
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            '2, 12, 22, ...',
                            style: GoogleFonts.sourceSansPro(
                              fontSize: height * 0.025,
                              color: secondaryTextColor,
                            ),
                          ),
                          Icon(
                            Icons.radio_button_unchecked,
                            color: secondaryTextColor,
                            size: height * 0.025,
                          )
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            '3, 13, 23, ...',
                            style: GoogleFonts.sourceSansPro(
                              fontSize: height * 0.025,
                              color: secondaryTextColor,
                            ),
                          ),
                          Icon(
                            Icons.radio_button_unchecked,
                            color: secondaryTextColor,
                            size: height * 0.025,
                          )
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            '4, 14, 24, ...',
                            style: GoogleFonts.sourceSansPro(
                              fontSize: height * 0.025,
                              color: secondaryTextColor,
                            ),
                          ),
                          Icon(
                            Icons.radio_button_unchecked,
                            color: secondaryTextColor,
                            size: height * 0.025,
                          )
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            '5, 15, 25, ...',
                            style: GoogleFonts.sourceSansPro(
                              fontSize: height * 0.025,
                              color: secondaryTextColor,
                            ),
                          ),
                          Icon(
                            Icons.radio_button_unchecked,
                            color: secondaryTextColor,
                            size: height * 0.025,
                          )
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            '6, 16, 26, ...',
                            style: GoogleFonts.sourceSansPro(
                              fontSize: height * 0.025,
                              color: secondaryTextColor,
                            ),
                          ),
                          Icon(
                            Icons.radio_button_unchecked,
                            color: secondaryTextColor,
                            size: height * 0.025,
                          )
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            '7, 17, 27, ...',
                            style: GoogleFonts.sourceSansPro(
                              fontSize: height * 0.025,
                              color: secondaryTextColor,
                            ),
                          ),
                          Icon(
                            Icons.radio_button_unchecked,
                            color: secondaryTextColor,
                            size: height * 0.025,
                          )
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            '8, 18, 28, ...',
                            style: GoogleFonts.sourceSansPro(
                              fontSize: height * 0.025,
                              color: secondaryTextColor,
                            ),
                          ),
                          Icon(
                            Icons.radio_button_unchecked,
                            color: secondaryTextColor,
                            size: height * 0.025,
                          )
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            '9, 19, 29, ...',
                            style: GoogleFonts.sourceSansPro(
                              fontSize: height * 0.025,
                              color: secondaryTextColor,
                            ),
                          ),
                          Icon(
                            Icons.radio_button_unchecked,
                            color: secondaryTextColor,
                            size: height * 0.025,
                          )
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            '10, 20 , 30, ...',
                            style: GoogleFonts.sourceSansPro(
                              fontSize: height * 0.025,
                              color: secondaryTextColor,
                            ),
                          ),
                          Icon(
                            Icons.radio_button_unchecked,
                            color: secondaryTextColor,
                            size: height * 0.025,
                          )
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Einzelwortschätze',
                            style: GoogleFonts.sourceSansPro(
                              fontSize: height * 0.03,
                              color: primaryColor,
                            ),
                          ),
                          Icon(
                            Icons.keyboard_arrow_down,
                            color: secondaryAltTextColor,
                          ),
                        ],
                      ),
                      SizedBox(
                        height: width * 0.03,
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          SizedBox(
            height: height * 0.15,
          ),
        ],
      ),
    );
  }
}
