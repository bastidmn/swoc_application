import 'dart:developer';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:swoc_application/constants/constants.dart';

class QueryOverviewCard extends StatefulWidget {
  QueryOverviewCard({
    this.queryName,
    this.queryDesc,
    this.vocGoodCount,
    this.vocBadCount,
    this.lastOpened,
  });

  final String queryName;
  final String queryDesc;
  final int vocGoodCount;
  final int vocBadCount;
  final String lastOpened;

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
                                        Text(
                                          widget.queryDesc,
                                          style: GoogleFonts.sourceSansPro(
                                            fontSize: width * 0.04,
                                            color: primaryAltTextColor,
                                          ),
                                        ),
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
              // Padding(
              //   padding: EdgeInsets.all(width * 0.03),
              //   child: Column(
              //     children: [
              //       Row(
              //         children: [
              //           Expanded(
              //             flex: 3,
              //             child: Column(
              //               children: [
              //                 Center(
              //                   child: Text(
              //                     'Starke Vokabeln',
              //                     style: GoogleFonts.sourceSansPro(
              //                       fontSize: height * 0.025,
              //                       color: secondaryTextColor,
              //                     ),
              //                   ),
              //                 ),
              //                 Center(
              //                   child: Text(
              //                     '10700',
              //                     style: GoogleFonts.sourceSansPro(
              //                       fontSize: height * 0.035,
              //                       fontWeight: FontWeight.bold,
              //                       color: secondaryTextColor,
              //                     ),
              //                   ),
              //                 ),
              //               ],
              //             ),
              //           ),
              //           Expanded(
              //             flex: 2,
              //             child: Center(
              //               child: Material(
              //                 elevation: 4.0,
              //                 borderRadius: BorderRadius.all(
              //                     Radius.circular(height * 0.035)),
              //                 child: Container(
              //                   height: height * 0.07,
              //                   width: height * 0.07,
              //                   decoration: BoxDecoration(
              //                       color: accentColor,
              //                       borderRadius: BorderRadius.all(
              //                           Radius.circular(height * 0.035))),
              //                   child: Center(
              //                     child: Icon(
              //                       Icons.play_arrow,
              //                       color: primaryTextColor,
              //                       size: height * 0.03,
              //                     ),
              //                   ),
              //                 ),
              //               ),
              //             ),
              //           ),
              //         ],
              //       ),
              //       Row(
              //         children: [
              //           Expanded(
              //             flex: 3,
              //             child: Center(
              //               child: Column(
              //                 children: [
              //                   Text(
              //                     'Schwache Vokabeln',
              //                     style: GoogleFonts.sourceSansPro(
              //                       fontSize: height * 0.025,
              //                       color: secondaryTextColor,
              //                     ),
              //                   ),
              //                   Text(
              //                     '10300',
              //                     style: GoogleFonts.sourceSansPro(
              //                       fontSize: height * 0.035,
              //                       fontWeight: FontWeight.bold,
              //                       color: secondaryTextColor,
              //                     ),
              //                   ),
              //                 ],
              //               ),
              //             ),
              //           ),
              //           Expanded(
              //             flex: 2,
              //             child: Center(
              //               child: Material(
              //                 elevation: 4.0,
              //                 borderRadius: BorderRadius.all(
              //                     Radius.circular(height * 0.035)),
              //                 child: Container(
              //                   height: height * 0.07,
              //                   width: height * 0.07,
              //                   decoration: BoxDecoration(
              //                       color: accentColor,
              //                       borderRadius: BorderRadius.all(
              //                           Radius.circular(height * 0.035))),
              //                   child: Icon(
              //                     Icons.play_arrow,
              //                     color: primaryTextColor,
              //                     size: height * 0.03,
              //                   ),
              //                 ),
              //               ),
              //             ),
              //           ),
              //         ],
              //       ),
              //     ],
              //   ),
              // ),
            ],
          ),
        ),
      ),
    );
  }
}
