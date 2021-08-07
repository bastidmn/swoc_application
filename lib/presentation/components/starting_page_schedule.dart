import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:swoc_application/constants/constants.dart';

class StartingPageSchedule extends StatelessWidget {
  StartingPageSchedule();

  @override
  Widget build(BuildContext context) {
    final double _height = MediaQuery.of(context).size.height;
    final double _width = MediaQuery.of(context).size.width;
    return Material(
      borderRadius: BorderRadius.circular(_width * 0.025),
      elevation: 4.0,
      child: Container(
        width: _width * 0.94,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(_width * 0.025),
          color: secondaryColor,
        ),
        child: Padding(
          padding: EdgeInsets.all(_width * 0.03),
          child: Column(
            children: [
              ScheduleDateComponent(
                timeUntil: '23 d',
                content: '3. Schulaufgabe',
              ),
              Divider(
                height: 1,
                color: secondaryAltTextColor,
              ),
              ScheduleDateComponent(
                timeUntil: '5 h',
                content: 'Latein-Workshop',
              ),
              ScheduleEditComponent(),
            ],
          ),
        ),
      ),
    );
  }
}

class ScheduleDateComponent extends StatelessWidget {
  final String content;
  final String timeUntil;

  ScheduleDateComponent({
    this.content,
    this.timeUntil,
  });

  @override
  Widget build(BuildContext context) {
    final double _height = MediaQuery.of(context).size.height;
    final double _width = MediaQuery.of(context).size.width;
    return SizedBox(
      width: double.infinity,
      height: _height * 0.08,
      child: Row(
        children: [
          Expanded(
            flex: 1,
            child: Center(
              child: Text(
                'in ' + timeUntil,
                style: GoogleFonts.sourceSansPro(
                  color: secondaryTextColor,
                  fontSize: _width * 0.06,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          Expanded(
            flex: 2,
            child: Text(
              content,
              style: GoogleFonts.sourceSansPro(
                color: secondaryTextColor,
                fontSize: _width * 0.04,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class ScheduleEditComponent extends StatelessWidget {
  ScheduleEditComponent();

  @override
  Widget build(BuildContext context) {
    final double _height = MediaQuery.of(context).size.height;
    final double _width = MediaQuery.of(context).size.width;
    return SizedBox(
      width: double.infinity,
      height: _height * 0.04,
      child: Center(
        child: Text(
          'Ändern',
          style: GoogleFonts.sourceSansPro(
            color: accentColor,
            fontSize: _width * 0.04,
          ),
        ),
      ),
    );
  }
}
