import 'dart:ui';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:swoc_application/constants/constants.dart';
import 'package:swoc_application/models/day_model.dart';

class StartingPageTimetable extends StatelessWidget {
  StartingPageTimetable();

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
              MonthComponent(
                monthsToDisplay: ['MÄRZ', 'APRIL'],
              ),
              WeekForecastComponent(),
              Divider(
                height: 1,
                color: secondaryAltTextColor,
              ),
              TimetableDateComponent(
                time: '8:00',
                weekday: 'Montag',
              ),
              Divider(
                height: 1,
                color: secondaryAltTextColor,
              ),
              TimetableDateComponent(
                time: '11:30',
                weekday: 'Montag',
              ),
              TimetableEditComponent()
            ],
          ),
        ),
      ),
    );
  }
}

class MonthComponent extends StatelessWidget {
  final List<String> monthsToDisplay;

  MonthComponent({
    this.monthsToDisplay,
  });

  @override
  Widget build(BuildContext context) {
    final double _height = MediaQuery.of(context).size.height;
    final double _width = MediaQuery.of(context).size.width;
    return SizedBox(
      width: double.infinity,
      height: _height * 0.03,
      child: Row(
        children: (monthsToDisplay.length > 1)
            ? [
                Text(
                  monthsToDisplay[0],
                  style: GoogleFonts.raleway(
                    fontSize: _height * 0.02,
                    fontWeight: FontWeight.bold,
                    color: secondaryTextColor,
                  ),
                ),
                Spacer(),
                Text(
                  monthsToDisplay[1],
                  style: GoogleFonts.raleway(
                    fontSize: _height * 0.02,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ]
            : [
                Text(
                  monthsToDisplay[0],
                  style: GoogleFonts.raleway(
                    fontSize: _height * 0.02,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
      ),
    );
  }
}

class WeekForecastComponent extends StatelessWidget {
  WeekForecastComponent();

  @override
  Widget build(BuildContext context) {
    final double _height = MediaQuery.of(context).size.height;
    final double _width = MediaQuery.of(context).size.width;
    return SizedBox(
      width: double.infinity,
      height: _height * 0.09,
      child: Row(
        children: [
          ForecastDayComponent(
            dayModel: new DayModel(
              weekday: 1,
              date: 30,
              isToday: true,
              hasEvent: false,
            ),
          ),
          ForecastDayComponent(
            dayModel: new DayModel(
              weekday: 2,
              date: 31,
              isToday: false,
              hasEvent: false,
            ),
          ),
          ForecastDayComponent(
            dayModel: new DayModel(
              weekday: 3,
              date: 01,
              isToday: false,
              hasEvent: true,
            ),
          ),
          ForecastDayComponent(
            dayModel: new DayModel(
              weekday: 4,
              date: 02,
              isToday: false,
              hasEvent: false,
            ),
          ),
          ForecastDayComponent(
            dayModel: new DayModel(
              weekday: 5,
              date: 03,
              isToday: false,
              hasEvent: false,
            ),
          ),
          ForecastDayComponent(
            dayModel: new DayModel(
              weekday: 6,
              date: 04,
              isToday: false,
              hasEvent: true,
            ),
          ),
          ForecastDayComponent(
            dayModel: new DayModel(
              weekday: 7,
              date: 05,
              isToday: false,
              hasEvent: true,
            ),
          ),
        ],
      ),
    );
  }
}

class ForecastDayComponent extends StatelessWidget {
  final DayModel dayModel;

  ForecastDayComponent({
    this.dayModel,
  });

  @override
  Widget build(BuildContext context) {
    final double _height = MediaQuery.of(context).size.height;
    final double _width = MediaQuery.of(context).size.width;
    return Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            dayModel.date.toString(),
            style: GoogleFonts.sourceSansPro(
              fontSize: _width * 0.04,
              color: secondaryAltTextColor,
              fontWeight: FontWeight.bold,
            ),
          ),
          Container(
            width: _width * 0.09,
            height: _width * 0.09,
            decoration: BoxDecoration(
              color: (dayModel.hasEvent) ? primaryColor : Colors.transparent,
              borderRadius: BorderRadius.circular(_width * 0.05),
            ),
            child: Center(
              child: Text(
                dayModel.intToWeekDayString(),
                style: GoogleFonts.sourceSansPro(
                  fontWeight: FontWeight.bold,
                  color: (dayModel.hasEvent)
                      ? primaryTextColor
                      : secondaryTextColor,
                  fontSize: _width * 0.045,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class TimetableDateComponent extends StatelessWidget {
  final String time;
  final String weekday;

  TimetableDateComponent({
    this.time,
    this.weekday,
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
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  weekday,
                  style: GoogleFonts.sourceSansPro(
                    color: secondaryTextColor,
                    fontSize: _width * 0.05,
                  ),
                ),
                Text(
                  time,
                  style: GoogleFonts.sourceSansPro(
                    color: secondaryTextColor,
                    fontSize: _width * 0.06,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            flex: 2,
            child: Text(
              'lorem ipsum est',
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

class TimetableEditComponent extends StatelessWidget {
  TimetableEditComponent();

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
