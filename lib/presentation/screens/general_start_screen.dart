import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sqflite/sqflite.dart';
import 'package:swoc_application/constants/constants.dart';
import 'package:swoc_application/database/data_handler.dart';
import 'package:swoc_application/presentation/components/starting_page_latest_card.dart';
import 'package:swoc_application/presentation/components/starting_page_schedule.dart';
import 'package:swoc_application/presentation/components/starting_page_timetable.dart';

class GeneralStartScreen extends StatefulWidget {
  const GeneralStartScreen({Key key}) : super(key: key);

  @override
  _GeneralStartScreenState createState() => _GeneralStartScreenState();
}

class _GeneralStartScreenState extends State<GeneralStartScreen> {
  DataHandler database = DataHandler.dataHandler;

  void updateData() {
    log('Data updated from home');
  }

  @override
  void initState() {
    updateData();
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
      child: SingleChildScrollView(
        child: Column(
          children: [
            //Top Field
            Padding(
              padding: EdgeInsets.only(
                left: width * 0.03,
                top: width * 0.03,
                bottom: width * 0.015,
              ),
              child: Row(
                children: [
                  Text(
                    'Aktuelle Abfrage',
                    style: GoogleFonts.raleway(
                      //exo2(
                      color: secondaryTextColor,
                      fontSize: height * 0.035,
                      fontWeight: FontWeight.w900,
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                left: width * 0.03,
                right: width * 0.03,
              ),
              child: StartingPageLatestCard(),
            ),
            Padding(
              padding: EdgeInsets.only(
                left: width * 0.03,
                top: width * 0.03,
                bottom: width * 0.015,
              ),
              child: Row(
                children: [
                  Text(
                    'Stundenplan',
                    style: GoogleFonts.raleway(
                      //exo2(
                      color: secondaryTextColor,
                      fontSize: height * 0.035,
                      fontWeight: FontWeight.w900,
                    ),
                  ),
                ],
              ),
            ),
            StartingPageTimetable(),
            Padding(
              padding: EdgeInsets.only(
                left: width * 0.03,
                top: width * 0.03,
                bottom: width * 0.015,
              ),
              child: Row(
                children: [
                  Text(
                    'Termine',
                    style: GoogleFonts.raleway(
                      //exo2(
                      color: secondaryTextColor,
                      fontSize: height * 0.035,
                      fontWeight: FontWeight.w900,
                    ),
                  ),
                ],
              ),
            ),
            StartingPageSchedule(),
            SizedBox(
              height: height * 0.115,
            ),
          ],
        ),
      ),
    );
  }
}
// Column(
//   children: [
//     Padding(
//       padding: EdgeInsets.only(left: width * 0.03),
//       child: Row(
//         children: [
//           Text(
//             'Abfragevorschläge für dich',
//             style: GoogleFonts.sourceSansPro(
//               color: secondaryTextAltColor,
//               fontSize: height * 0.03,
//             ),
//           ),
//           // Icon(
//           //   Icons.arrow_forward_ios,
//           //   color: secondaryTextAltColor,
//           // ),
//         ],
//       ),
//     ),
//   ],
// ),

// Column(
//   children: [
//     GestureDetector(
//       onTap: () => Navigator.pushNamed(context, '/queryoverview'),
//       child: Padding(
//         padding: EdgeInsets.only(left: width * 0.03),
//         child: Row(
//           children: [
//             Text(
//               'Deine Abfragen',
//               style: GoogleFonts.sourceSansPro(
//                 color: secondaryTextAltColor,
//                 fontSize: height * 0.03,
//               ),
//             ),
//             // Icon(
//             //   Icons.arrow_forward_ios,
//             //   color: secondaryTextAltColor,
//             // ),
//           ],
//         ),
//       ),
//     ),
//     SizedBox(
//       height: height * 0.22 + width * 0.045,
//       child: Padding(
//         padding: EdgeInsets.only(
//           top: width * 0.015,
//           bottom: width * 0.03,
//         ),
//         child:
//             NotificationListener<OverscrollIndicatorNotification>(
//           onNotification:
//               (OverscrollIndicatorNotification overscroll) {
//             overscroll.disallowGlow();
//             return false;
//           },
//           child: ListView(
//             scrollDirection: Axis.horizontal,
//             children: [
//               StartingPageQueryCard(
//                 width: width,
//                 height: height,
//                 primaryColor: primaryColor,
//                 primaryColorLight: primaryLightColor,
//                 primaryColorDark: primaryDarkColor,
//                 primaryTextColor: primaryTextColor,
//                 primaryTextColorAlt: primaryTextAltColor,
//                 secondaryColor: secondaryColor,
//                 secondaryColorDark: secondaryDarkColor,
//                 secondaryTextColor: secondaryTextColor,
//                 secondaryTextColorAlt: secondaryTextAltColor,
//               ),
//               StartingPageQueryCard(
//                 width: width,
//                 height: height,
//                 primaryColor: primaryColor,
//                 primaryColorLight: primaryLightColor,
//                 primaryColorDark: primaryDarkColor,
//                 primaryTextColor: primaryTextColor,
//                 primaryTextColorAlt: primaryTextAltColor,
//                 secondaryColor: secondaryColor,
//                 secondaryColorDark: secondaryDarkColor,
//                 secondaryTextColor: secondaryTextColor,
//                 secondaryTextColorAlt: secondaryTextAltColor,
//               ),
//               StartingPageQueryCard(
//                 width: width,
//                 height: height,
//                 primaryColor: primaryColor,
//                 primaryColorLight: primaryLightColor,
//                 primaryColorDark: primaryDarkColor,
//                 primaryTextColor: primaryTextColor,
//                 primaryTextColorAlt: primaryTextAltColor,
//                 secondaryColor: secondaryColor,
//                 secondaryColorDark: secondaryDarkColor,
//                 secondaryTextColor: secondaryTextColor,
//                 secondaryTextColorAlt: secondaryTextAltColor,
//               ),
//               StartingPageQueryCard(
//                 width: width,
//                 height: height,
//                 primaryColor: primaryColor,
//                 primaryColorLight: primaryLightColor,
//                 primaryColorDark: primaryDarkColor,
//                 primaryTextColor: primaryTextColor,
//                 primaryTextColorAlt: primaryTextAltColor,
//                 secondaryColor: secondaryColor,
//                 secondaryColorDark: secondaryDarkColor,
//                 secondaryTextColor: secondaryTextColor,
//                 secondaryTextColorAlt: secondaryTextAltColor,
//               ),
//               SizedBox(
//                 width: width * 0.03,
//               ),
//             ],
//           ),
//         ),
//       ),
//     ),
//   ],
// ),
// GestureDetector(
//   onTap: () =>
//       Navigator.pushReplacementNamed(context, '/grammarmain'),
//   child: Padding(
//     padding: EdgeInsets.only(left: width * 0.03),
//     child: Row(
//       children: [
//         Text(
//           'Grammatik',
//           style: GoogleFonts.sourceSansPro(
//             color: secondaryTextAltColor,
//             fontSize: height * 0.03,
//           ),
//         ),
//         // Icon(
//         //   Icons.arrow_forward_ios,
//         //   color: secondaryTextAltColor,
//         // ),
//       ],
//     ),
//   ),
// ),
// SizedBox(
//   height: height * 0.22 + width * 0.045,
//   child: Padding(
//     padding: EdgeInsets.only(
//       top: width * 0.015,
//       bottom: width * 0.03,
//     ),
//     child:
//         NotificationListener<OverscrollIndicatorNotification>(
//       onNotification:
//           (OverscrollIndicatorNotification overscroll) {
//         overscroll.disallowGlow();
//         return false;
//       },
//       child: ListView(
//         scrollDirection: Axis.horizontal,
//         children: [
//           StartingPageGrammarCard(
//             width: width,
//             height: height,
//             primaryColor: primaryColor,
//             primaryColorLight: primaryLightColor,
//             primaryColorDark: primaryDarkColor,
//             primaryTextColor: primaryTextColor,
//             primaryTextColorAlt: primaryTextAltColor,
//             secondaryColor: secondaryColor,
//             secondaryColorDark: secondaryDarkColor,
//             secondaryTextColor: secondaryTextColor,
//             secondaryTextColorAlt: secondaryTextAltColor,
//           ),
//           StartingPageGrammarCard(
//             width: width,
//             height: height,
//             primaryColor: primaryColor,
//             primaryColorLight: primaryLightColor,
//             primaryColorDark: primaryDarkColor,
//             primaryTextColor: primaryTextColor,
//             primaryTextColorAlt: primaryTextAltColor,
//             secondaryColor: secondaryColor,
//             secondaryColorDark: secondaryDarkColor,
//             secondaryTextColor: secondaryTextColor,
//             secondaryTextColorAlt: secondaryTextAltColor,
//           ),
//           StartingPageGrammarCard(
//             width: width,
//             height: height,
//             primaryColor: primaryColor,
//             primaryColorLight: primaryLightColor,
//             primaryColorDark: primaryDarkColor,
//             primaryTextColor: primaryTextColor,
//             primaryTextColorAlt: primaryTextAltColor,
//             secondaryColor: secondaryColor,
//             secondaryColorDark: secondaryDarkColor,
//             secondaryTextColor: secondaryTextColor,
//             secondaryTextColorAlt: secondaryTextAltColor,
//           ),
//           StartingPageGrammarCard(
//             width: width,
//             height: height,
//             primaryColor: primaryColor,
//             primaryColorLight: primaryLightColor,
//             primaryColorDark: primaryDarkColor,
//             primaryTextColor: primaryTextColor,
//             primaryTextColorAlt: primaryTextAltColor,
//             secondaryColor: secondaryColor,
//             secondaryColorDark: secondaryDarkColor,
//             secondaryTextColor: secondaryTextColor,
//             secondaryTextColorAlt: secondaryTextAltColor,
//           ),
//           SizedBox(
//             width: width * 0.03,
//           ),
//         ],
//       ),
//     ),
//   ),
// ),
// SizedBox(
//   height: height * 0.22 + width * 0.045,
//   child: Padding(
//     padding: EdgeInsets.only(
//       top: width * 0.015,
//       bottom: width * 0.03,
//     ),
//     child:
//         NotificationListener<OverscrollIndicatorNotification>(
//       onNotification:
//           (OverscrollIndicatorNotification overscroll) {
//         overscroll.disallowGlow();
//         return false;
//       },
//       child: ListView(
//         scrollDirection: Axis.horizontal,
//         children: [
//           StartingPageRecommendationCard(
//             width: width,
//             height: height,
//             primaryColor: primaryColor,
//             primaryColorLight: primaryLightColor,
//             primaryColorDark: primaryDarkColor,
//             primaryTextColor: primaryTextColor,
//             primaryTextColorAlt: primaryTextAltColor,
//             secondaryColor: secondaryColor,
//             secondaryColorDark: secondaryDarkColor,
//             secondaryTextColor: secondaryTextColor,
//             secondaryTextColorAlt: secondaryTextAltColor,
//           ),
//           StartingPageRecommendationCard(
//             width: width,
//             height: height,
//             primaryColor: primaryColor,
//             primaryColorLight: primaryLightColor,
//             primaryColorDark: primaryDarkColor,
//             primaryTextColor: primaryTextColor,
//             primaryTextColorAlt: primaryTextAltColor,
//             secondaryColor: secondaryColor,
//             secondaryColorDark: secondaryDarkColor,
//             secondaryTextColor: secondaryTextColor,
//             secondaryTextColorAlt: secondaryTextAltColor,
//           ),
//           StartingPageRecommendationCard(
//             width: width,
//             height: height,
//             primaryColor: primaryColor,
//             primaryColorLight: primaryLightColor,
//             primaryColorDark: primaryDarkColor,
//             primaryTextColor: primaryTextColor,
//             primaryTextColorAlt: primaryTextAltColor,
//             secondaryColor: secondaryColor,
//             secondaryColorDark: secondaryDarkColor,
//             secondaryTextColor: secondaryTextColor,
//             secondaryTextColorAlt: secondaryTextAltColor,
//           ),
//           SizedBox(
//             width: width * 0.03,
//           ),
//         ],
//       ),
//     ),
//   ),
// ),
