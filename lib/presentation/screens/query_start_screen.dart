import 'dart:developer';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:swoc_application/constants/constants.dart';
import 'package:swoc_application/database/data_handler.dart';
import 'package:swoc_application/models/query_proxy.dart';

class QueryStartScreen extends StatefulWidget {
  const QueryStartScreen({Key key}) : super(key: key);

  @override
  _QueryStartScreenState createState() => _QueryStartScreenState();
}

class _QueryStartScreenState extends State<QueryStartScreen> {
  DataHandler dataHandler;
  String dropdownValue;

  // List<QueryProxy> queries;
  // List<QueryOverviewCard> queryCards;

  //TextEditingController _textEditingController;

  void initState() {
    super.initState();
    dropdownValue = 'Name';
    // updateQueries();
    //1_textEditingController = TextEditingController();
  }

  // updateQueries() {
  //   queries = dataHandler.getQueries();
  //   List<QueryOverviewCard> newCards;
  //   for (QueryProxy proxy in queries) {
  //     newCards.add(
  //       new QueryOverviewCard(
  //         queryName: proxy.name,
  //         vocGoodCount: proxy.goodWordCount,
  //         vocBadCount: proxy.badWordCount,
  //         lastOpened: proxy.lastAccessed,
  //       ),
  //     );
  //   }
  //   log(queryCards.length.toString());
  //   setState(() {
  //     queryCards = newCards;
  //   });
  // }

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
          // (queryCards == null)
          //     ? SizedBox(
          //         width: 0.0,
          //         height: 0.0,
          //       )
          //     : Column(
          //         children: queryCards,
          //       ),
          SizedBox(
            height: height * 0.1,
          ),
        ],
      ),
    );
  }
}

class QueryOverviewCard extends StatefulWidget {
  QueryOverviewCard({
    this.queryName,
    //this.queryDesc,
    this.vocGoodCount,
    this.vocBadCount,
    this.lastOpened,
  });

  final String queryName;

  //final String queryDesc;
  final int vocGoodCount;
  final int vocBadCount;
  final DateTime lastOpened;

  @override
  _QueryOverviewCardState createState() => _QueryOverviewCardState();
}

class _QueryOverviewCardState extends State<QueryOverviewCard> {
  @override
  Widget build(BuildContext context) {
    final double height = MediaQuery.of(context).size.height;
    final double width = MediaQuery.of(context).size.width;

    return Padding(
      padding: EdgeInsets.only(
        left: width * 0.03,
        right: width * 0.03,
        bottom: width * 0.03,
      ),
      child: Material(
        elevation: 4.0,
        borderRadius: BorderRadius.circular(width * 0.025),
        //Main Container Body
        child: Container(
          width: width * 0.94,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(width * 0.025),
            color: secondaryColor,
          ),
          child: Column(
            children: [
              //Top Part
              Material(
                elevation: 4.0,
                borderRadius: BorderRadius.circular(width * 0.025),
                child: Container(
                  decoration: BoxDecoration(
                    color: primaryColor,
                    borderRadius: BorderRadius.circular(width * 0.025),
                  ),
                  child: Padding(
                    padding: EdgeInsets.all(width * 0.03),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: EdgeInsets.only(bottom: width * 0.015),
                              child: Row(
                                children: [
                                  Container(
                                    height: width * 0.16,
                                    width: width * 0.16,
                                    decoration: BoxDecoration(
                                      color: secondaryColor,
                                      borderRadius:
                                          BorderRadius.circular(width * 0.16),
                                    ),
                                  ),
                                  SizedBox(
                                    width: width * 0.03,
                                  ),
                                  Container(
                                    width: width * 0.54,
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Text(
                                          widget.queryName,
                                          style: GoogleFonts.sourceSansPro(
                                            fontSize: width * 0.06,
                                            color: primaryTextColor,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                        // Text(
                                        //   widget.queryDesc,
                                        //   style: GoogleFonts.sourceSansPro(
                                        //     fontSize: width * 0.04,
                                        //     color: primaryAltTextColor,
                                        //   ),
                                        // ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            IconButton(
                              icon: Icon(
                                Icons.more_vert,
                                size: width * 0.06,
                                color: secondaryColor,
                              ),
                              onPressed: () =>
                                  log('More Button on Voc Card was pressed'),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    //Good Vocabulary
                    GestureDetector(
                      onTap: () => log('Good Voc was pressed'),
                      child: SizedBox(
                        width: width * 0.47,
                        child: Padding(
                          padding: EdgeInsets.all(width * 0.03),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Text(
                                'Starke Vokabeln',
                                style: GoogleFonts.sourceSansPro(
                                  fontSize: height * 0.025,
                                  color: secondaryTextColor,
                                ),
                              ),
                              Text(
                                '10700',
                                style: GoogleFonts.sourceSansPro(
                                  fontSize: height * 0.035,
                                  fontWeight: FontWeight.bold,
                                  color: secondaryTextColor,
                                ),
                              ),
                              SizedBox(
                                height: width * 0.015,
                              ),
                              Text(
                                'Starten',
                                style: GoogleFonts.sourceSansPro(
                                  fontSize: height * 0.025,
                                  color: accentColor,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    //Bad Vocabulary
                    GestureDetector(
                      onTap: () => log('Bad Voc was pressed'),
                      child: SizedBox(
                        width: width * 0.47,
                        child: Padding(
                          padding: EdgeInsets.all(width * 0.03),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Text(
                                'Schwache Vokabeln',
                                style: GoogleFonts.sourceSansPro(
                                  fontSize: height * 0.025,
                                  color: secondaryTextColor,
                                ),
                              ),
                              Text(
                                '10700',
                                style: GoogleFonts.sourceSansPro(
                                  fontSize: height * 0.035,
                                  fontWeight: FontWeight.bold,
                                  color: secondaryTextColor,
                                ),
                              ),
                              SizedBox(
                                height: width * 0.015,
                              ),
                              Text(
                                'Starten',
                                style: GoogleFonts.sourceSansPro(
                                  fontSize: height * 0.025,
                                  color: accentColor,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
