import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:swoc_application/constants/constants.dart';

class NewThreeScreen extends StatefulWidget {
  NewThreeScreen();

  @override
  _NewThreeScreenState createState() => _NewThreeScreenState();
}

class _NewThreeScreenState extends State<NewThreeScreen> {
  bool inUse = false;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final double height = MediaQuery.of(context).size.height;
    final double width = MediaQuery.of(context).size.width;

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
                'Gib einen Namen ein',
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
                'Schritt 3 von 3',
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
            padding: EdgeInsets.all(
              width * 0.03,
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
                    vertical: width * 0.06,
                  ),
                  child: Column(
                    children: [
                      Text(
                        'Hier bitte den Namen eingeben:',
                        style: GoogleFonts.sourceSansPro(
                          color: secondaryTextColor,
                          fontSize: height * 0.025,
                          fontWeight: FontWeight.w900,
                        ),
                      ),
                      TextField(
                        textAlign: TextAlign.center,
                        style: GoogleFonts.sourceSansPro(
                          color: secondaryTextColor,
                          fontSize: height * 0.03,
                        ),
                        maxLength: 20,
                      ),
                      RichText(
                        text: new TextSpan(
                            style: GoogleFonts.sourceSansPro(
                              color: secondaryTextColor,
                              fontSize: height * 0.025,
                              fontWeight: FontWeight.w900,
                            ),
                            children: <TextSpan>[
                              TextSpan(
                                text: 'Dieser Name ist ',
                              ),
                              (inUse)
                                  ? TextSpan(
                                      text: 'belegt',
                                      style: GoogleFonts.sourceSansPro(
                                        color: Colors.red,
                                        fontSize: height * 0.025,
                                        fontWeight: FontWeight.w900,
                                      ),
                                    )
                                  : TextSpan(
                                      text: 'frei',
                                      style: GoogleFonts.sourceSansPro(
                                        color: Colors.green,
                                        fontSize: height * 0.025,
                                        fontWeight: FontWeight.w900,
                                      ),
                                    ),
                            ]),
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
