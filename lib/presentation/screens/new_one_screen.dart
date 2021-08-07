import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:swoc_application/constants/constants.dart';

class NewOneScreen extends StatefulWidget {
  @override
  _NewOneScreenState createState() => _NewOneScreenState();
}

class _NewOneScreenState extends State<NewOneScreen> {
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
                'Wähle die Buchreihe(n)',
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
                'Schritt 1 von 3',
                style: GoogleFonts.sourceSansPro(
                  color: secondaryTextColor,
                  fontSize: height * 0.03,
                  fontWeight: FontWeight.w900,
                ),
              ),
            ),
          ),
          SizedBox(
            height: width * 0.01,
          ),
          Row(
            children: [
              VocSeriesCard(title: 'Campus A', image: 'bockstock,png'),
              VocSeriesCard(title: 'Campus B', image: 'bockstock,png'),
            ],
          ),
          Row(
            children: [
              VocSeriesCard(title: 'Campus C', image: 'bockstock,png'),
            ],
          ),
        ],
      ),
    );
  }
}

class VocSeriesCard extends StatelessWidget {
  final String title;
  final String image;

  VocSeriesCard({@required this.title, @required this.image});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return SizedBox(
      width: width * 0.5,
      height: width * 0.5,
      child: Padding(
        padding: EdgeInsets.all(width * 0.02),
        child: Material(
          elevation: 4.0,
          borderRadius: BorderRadius.all(Radius.circular(height * 0.04)),
          child: Container(
            height: width * 0.47,
            width: width * 0.47,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(height * 0.04)),
              color: primaryColor,
            ),
            child: Padding(
              padding: EdgeInsets.all(width * 0.015),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                    flex: 2,
                    child: Container(
                      child: ConstrainedBox(
                        constraints: BoxConstraints.expand(),
                        child: Image(
                          image: AssetImage('assets/images/bookstock.png'),
                          fit: BoxFit.fitHeight,
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: Center(
                      child: Text(
                        title,
                        style: GoogleFonts.sourceSansPro(
                          color: primaryTextColor,
                          fontSize: height * 0.03,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
