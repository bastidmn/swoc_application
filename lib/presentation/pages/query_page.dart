import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:swoc_application/constants/constants.dart';
import 'package:swoc_application/presentation/components/custom_app_bar_arrow.dart';
import 'package:swoc_application/presentation/components/custom_small_action_button.dart';
import 'package:swoc_application/presentation/components/voc_card.dart';

class QueryPage extends StatefulWidget {
  @override
  _QueryPageState createState() => _QueryPageState();
}

class _QueryPageState extends State<QueryPage> {
  @override
  Widget build(BuildContext context) {
    final double _height = MediaQuery.of(context).size.height;
    final double _width = MediaQuery.of(context).size.width;
    int _streakCounter = 0;
    bool isRevealed = true;

    return SafeArea(
      child: Scaffold(
        backgroundColor: backgroundColor,
        body: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            CustomAppBarArrow(
              height: _height,
              width: _width,
              isSettingsPage: false,
              title: 'Abfrage',
              // title: 'Schulaufgabe 20.12',
              onTap: () => Navigator.pop(context),
            ),
            QueryPageTitleComponent(
              width: _width,
              height: _height,
            ),
            QueryPageCounterComponent(
              height: _height,
              width: _width,
            ),
            Expanded(
              child: Align(
                alignment: Alignment.topCenter,
                child: Column(
                  children: [
                    VocCard(
                      width: _width,
                      height: _height,
                      vocLatin: 'vocare, voco,\nvocavi, vocatum',
                      vocGerman: 'nennen, bezeichnen (als),\nanrufen',
                      isRevealed: false,
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: _height * 0.15,
              width: double.infinity,
              child: (isRevealed)
                  ? Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        CustomSmallActionButton(
                          icon: Icons.close,
                        ),
                        CustomSmallActionButton(
                          icon: Icons.check,
                        ),
                      ],
                    )
                  : Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Tippen, um die',
                          style: GoogleFonts.sourceSansPro(
                            fontSize: _width * 0.055,
                            color: secondaryAltTextColor,
                          ),
                        ),
                        Text(
                          'Bedeutung zu zeigen',
                          style: GoogleFonts.sourceSansPro(
                            fontSize: _width * 0.055,
                            color: secondaryAltTextColor,
                          ),
                        ),
                      ],
                    ),
            )
          ],
        ),
      ),
    );
  }
}

class QueryPageTitleComponent extends StatelessWidget {
  final double height;
  final double width;

  QueryPageTitleComponent({
    this.height,
    this.width,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: width * 0.045),
      child: Text(
        '314/700',
        style: GoogleFonts.sourceSansPro(
          fontWeight: FontWeight.bold,
          fontSize: width * 0.09,
        ),
      ),
    );
  }
}

class QueryPageCounterComponent extends StatelessWidget {
  final double height;
  final double width;

  QueryPageCounterComponent({
    this.height,
    this.width,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        top: width * 0.03,
        bottom: width * 0.015,
        right: width * 0.15,
      ),
      child: Align(
        alignment: Alignment.centerRight,
        child: Text(
          'x3',
          style: GoogleFonts.sourceSansPro(
            fontWeight: FontWeight.w900,
            fontSize: width * 0.08,
            color: secondaryTextColor,
          ),
        ),
      ),
    );
  }
}
