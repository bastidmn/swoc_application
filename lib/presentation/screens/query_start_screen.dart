import 'dart:developer';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:swoc_application/constants/constants.dart';
import 'package:swoc_application/presentation/components/query_overview_card.dart';

class QueryStartScreen extends StatefulWidget {
  const QueryStartScreen({Key key}) : super(key: key);

  @override
  _QueryStartScreenState createState() => _QueryStartScreenState();
}

class _QueryStartScreenState extends State<QueryStartScreen> {
  String dropdownValue;

  //TextEditingController _textEditingController;

  void initState() {
    super.initState();
    dropdownValue = 'Name';
    //1_textEditingController = TextEditingController();
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
      child: ListView(
        children: [
          Center(
            child: Padding(
              padding: EdgeInsets.all(width * 0.03),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Expanded(
                    flex: 3,
                    child: Material(
                      elevation: 4.0,
                      borderRadius: BorderRadius.circular(width),
                      child: Container(
                        height: height * 0.06,
                        padding: EdgeInsets.symmetric(
                          horizontal: width * 0.05,
                          // vertical: widget.width * 0.015,
                        ),
                        decoration: BoxDecoration(
                          color: secondaryColor,
                          borderRadius: BorderRadius.circular(width),
                        ),
                        child: TextField(
                          decoration: InputDecoration(
                            hintText: 'Suche',
                            hintStyle: GoogleFonts.sourceSansPro(
                              color: secondaryTextColor,
                            ),
                            icon: Icon(
                              Icons.search,
                              color: accentColor,
                            ),
                            border: InputBorder.none,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: Align(
                      alignment: Alignment.centerRight,
                      child: DropdownButton<String>(
                        underline: SizedBox(),
                        style: GoogleFonts.sourceSansPro(
                          color: secondaryTextColor,
                          fontWeight: FontWeight.bold,
                          fontSize: width * 0.04,
                        ),
                        value: dropdownValue,
                        onChanged: (String newValue) {
                          setState(() {
                            dropdownValue = newValue;
                            log(dropdownValue);
                          });
                        },
                        items: [
                          DropdownMenuItem(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  'Name',
                                ),
                              ],
                            ),
                            value: 'Name',
                          ),
                          DropdownMenuItem(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  'Datum',
                                ),
                              ],
                            ),
                            value: 'Datum',
                          ),
                          DropdownMenuItem(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  'Wörter',
                                ),
                              ],
                            ),
                            value: 'Wörter',
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          QueryOverviewCard(
            queryName: 'Schulaufgabe 20.12',
            queryDesc: 'Campus A 1-56',
            vocGoodCount: 304,
            vocBadCount: 540,
            lastOpened: '12.12.12',
          ),
          QueryOverviewCard(
            queryName: 'Schulaufgabe 20.12',
            queryDesc: 'Campus A 1-56',
            vocGoodCount: 304,
            vocBadCount: 540,
            lastOpened: '12.12.12',
          ),
          QueryOverviewCard(
            queryName: 'Schulaufgabe 20.12',
            queryDesc: 'Campus A 1-56',
            vocGoodCount: 304,
            vocBadCount: 540,
            lastOpened: '12.12.12',
          ),
          SizedBox(
            height: height * 0.1,
          ),
        ],
      ),
    );
  }
}
