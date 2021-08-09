import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:swoc_application/constants/constants.dart';
import 'package:swoc_application/presentation/components/grammar_topic_card.dart';

class DictionaryScreen extends StatefulWidget {
  const DictionaryScreen({Key key}) : super(key: key);

  @override
  _DictionaryScreenState createState() => _DictionaryScreenState();
}

class _DictionaryScreenState extends State<DictionaryScreen> {
  @override
  Widget build(BuildContext context) {
    final double width = MediaQuery.of(context).size.width;
    final double height = MediaQuery.of(context).size.height;

    return NotificationListener<OverscrollIndicatorNotification>(
      onNotification: (OverscrollIndicatorNotification overscroll) {
        overscroll.disallowGlow();
        return;
      },
      child: Padding(
        padding: EdgeInsets.only(
          left: width * 0.03,
          right: width * 0.03,
          top: width * 0.03,
          bottom: height * 0.115,
        ),
        child: ListView(
          children: [
            Padding(
              padding: EdgeInsets.only(
                bottom: width * 0.03,
              ),
              child: Text(
                'Deine Wörterbücher',
                style: GoogleFonts.raleway(
                  //exo2(
                  color: secondaryTextColor,
                  fontSize: height * 0.035,
                  fontWeight: FontWeight.w900,
                ),
              ),
            ),
            //Button for adding new dictionary
            Material(
              elevation: 4.0,
              borderRadius: BorderRadius.all(
                Radius.circular(width * 0.025),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
