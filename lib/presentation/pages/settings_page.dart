import 'dart:developer';
import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:swoc_application/constants/constants.dart';
import 'package:swoc_application/presentation/components/custom_app_bar_arrow.dart';
import 'package:url_launcher/url_launcher.dart';

class SettingsPage extends StatefulWidget {
  @override
  _SettingsPageState createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  void _lauchURLAboutUs() async {
    const url = 'https://grimtrickster.github.io/swoc_website_design/';
    if (await canLaunch(url)) {
      await (launch(url));
    } else {
      throw 'Could not lauch $url';
    }
  }

  List<String> generalVocs = [
    "Campus A",
    "Campus B",
    "Campus C",
    "Felix",
    "Adeo",
    "Stowasser 2018",
    "Top 500",
  ];
  List<String> personalVocs = [
    "Campus C",
  ];
  bool _themeValue;
  bool _isGerman;
  bool _campusA;
  bool _campusB;
  bool _campusC;

  @override
  void initState() {
    _themeValue = false;
    _isGerman = true;
    _campusA = false;
    _campusB = false;
    _campusC = false;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
        backgroundColor: secondaryColor,
        body: Column(
          children: [
            CustomAppBarArrow(
              height: height,
              width: width,
              isSettingsPage: true,
              title: "Einstellungen",
              onTap: () => Navigator.pop(context),
            ),
            Expanded(
              child: NotificationListener<OverscrollIndicatorNotification>(
                onNotification: (OverscrollIndicatorNotification overscroll) {
                  overscroll.disallowGlow();
                  return;
                },
                child: ListView(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(
                        left: width * 0.03,
                        right: width * 0.03,
                        top: width * 0.03,
                      ),
                      child: Column(
                        children: [
                          //Appearance
                          Padding(
                            padding: EdgeInsets.only(bottom: width * 0.045),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                //Title
                                Text(
                                  'Ansicht',
                                  style: GoogleFonts.raleway(
                                    fontSize: width * 0.06,
                                    color: secondaryTextColor,
                                    fontWeight: FontWeight.w900,
                                  ),
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      'Dark Theme',
                                      style: GoogleFonts.sourceSansPro(
                                        fontSize: width * 0.045,
                                        color: secondaryTextColor,
                                      ),
                                    ),
                                    SizedBox(
                                      height: height * 0.06,
                                      child: Switch(
                                        activeColor: primaryColor,
                                        value: _themeValue,
                                        onChanged: (value) {
                                          log("Theme was changed to $value");
                                          setState(() {
                                            _themeValue = !_themeValue;
                                          });
                                        },
                                      ),
                                    ),
                                  ],
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      'Deutsch',
                                      style: GoogleFonts.sourceSansPro(
                                        fontSize: width * 0.045,
                                        color: secondaryTextColor,
                                      ),
                                    ),
                                    SizedBox(
                                      height: height * 0.06,
                                      child: Switch(
                                        value: _isGerman,
                                        onChanged: (value) {
                                          log("German Language was changed to $value");
                                          setState(() {
                                            _isGerman = !_isGerman;
                                          });
                                        },
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(bottom: width * 0.045),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                //Title
                                Text(
                                  'Buchreihen',
                                  style: GoogleFonts.raleway(
                                    fontSize: width * 0.06,
                                    color: secondaryTextColor,
                                    fontWeight: FontWeight.w900,
                                  ),
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      'Campus A',
                                      style: GoogleFonts.sourceSansPro(
                                        fontSize: width * 0.045,
                                        color: secondaryTextColor,
                                      ),
                                    ),
                                    SizedBox(
                                      height: height * 0.06,
                                      child: Switch(
                                        value: _campusA,
                                        onChanged: (value) {
                                          log("Campus A was changed to $value");
                                          setState(() {
                                            _campusA = !_campusA;
                                          });
                                        },
                                      ),
                                    ),
                                  ],
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      'Campus B',
                                      style: GoogleFonts.sourceSansPro(
                                        fontSize: width * 0.045,
                                        color: secondaryTextColor,
                                      ),
                                    ),
                                    SizedBox(
                                      height: height * 0.06,
                                      child: Switch(
                                        value: _campusB,
                                        onChanged: (value) {
                                          log("Campus B was changed to $value");
                                          setState(() {
                                            _campusB = !_campusB;
                                          });
                                        },
                                      ),
                                    ),
                                  ],
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      'Campus C',
                                      style: GoogleFonts.sourceSansPro(
                                        fontSize: width * 0.045,
                                        color: secondaryTextColor,
                                      ),
                                    ),
                                    SizedBox(
                                      height: height * 0.06,
                                      child: Switch(
                                        value: _campusC,
                                        onChanged: (value) {
                                          log("Campus C was changed to $value");
                                          setState(() {
                                            _campusC = !_campusC;
                                          });
                                        },
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(bottom: width * 0.045),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                //Title
                                Text(
                                  'Über diese App',
                                  style: GoogleFonts.raleway(
                                    fontSize: width * 0.06,
                                    color: secondaryTextColor,
                                    fontWeight: FontWeight.w900,
                                  ),
                                ),
                                SizedBox(
                                  height: height * 0.06,
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        'Version',
                                        style: GoogleFonts.sourceSansPro(
                                          fontSize: width * 0.045,
                                          color: secondaryTextColor,
                                        ),
                                      ),
                                      Text(
                                        'Pre-Alpha',
                                        style: GoogleFonts.sourceSansPro(
                                          fontSize: width * 0.04,
                                          color: secondaryTextColor,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(
                                  height: height * 0.06,
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        'Website',
                                        style: GoogleFonts.sourceSansPro(
                                          fontSize: width * 0.045,
                                          color: secondaryTextColor,
                                        ),
                                      ),
                                      //Todo: Add Website link
                                      Text(
                                        'null',
                                        style: GoogleFonts.sourceSansPro(
                                          fontSize: width * 0.04,
                                          color: secondaryTextColor,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                          //Vocabularies
                          //About
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
