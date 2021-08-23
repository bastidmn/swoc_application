import 'dart:developer';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:swoc_application/constants/constants.dart';
import 'package:swoc_application/database/data_handler.dart';
import 'package:swoc_application/logic/blocs/query_page_bloc.dart';
import 'package:swoc_application/logic/blocs/starting_page_bloc.dart';
import 'package:swoc_application/models/language.dart';
import 'package:swoc_application/models/query_proxy.dart';
import 'package:swoc_application/models/word.dart';
import 'package:swoc_application/presentation/components/custom_action_button.dart';
import 'package:uuid/uuid.dart';

class QueryStartScreen extends StatefulWidget {
  const QueryStartScreen({Key key}) : super(key: key);

  @override
  _QueryStartScreenState createState() => _QueryStartScreenState();
}

class _QueryStartScreenState extends State<QueryStartScreen> {
  String dropdownValue;

  void updateData() {
    log('Data updated from queries');
  }

  void initState() {
    updateData();
    super.initState();
    dropdownValue = 'date';
    // String _wordId = DataHandler.dataHandler.addWord(new Word.newWord(
    //   Language.LA,
    //   'venire, venio, veni',
    //   'kommen',
    // ));
  }

  @override
  Widget build(BuildContext context) {
    final double height = MediaQuery.of(context).size.height;
    final double width = MediaQuery.of(context).size.width;

    return BlocProvider(
      create: (context) => QueryPageBloc(),
      lazy: false,
      child: BlocListener<StartingPageBloc, StartingPageState>(
        listener: (context, state) {
          (state.getPageCount() == 2) ?? log('Update Called');
        },
        child: NotificationListener<OverscrollIndicatorNotification>(
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
                            //Todo: Implement Search
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
                                value: 'name',
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
                                value: 'date',
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
                                value: 'words',
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              // ListView(
              //   children: [],
              // ),
              QueryOverviewCard(
                queryId: Uuid().v1(),
                queryName: 'Latein Abfrage',
                lang: Language.LA,
                iconId: 1,
                vocGoodCount: 123,
                vocBadCount: 123,
                lastOpened: DateTime.now(),
              ),
              QueryOverviewCard(
                queryId: Uuid().v1(),
                queryName: 'Englisch Abfrage',
                lang: Language.EN,
                iconId: 1,
                vocGoodCount: 123,
                vocBadCount: 123,
                lastOpened: DateTime.now(),
              ),
              QueryOverviewCard(
                queryId: Uuid().v1(),
                queryName: 'Französisch Abfrage',
                lang: Language.FR,
                iconId: 1,
                vocGoodCount: 123,
                vocBadCount: 123,
                lastOpened: DateTime.now(),
              ),
              QueryOverviewCard(
                queryId: Uuid().v1(),
                queryName: 'Italienisch Abfrage',
                lang: Language.IT,
                iconId: 1,
                vocGoodCount: 123,
                vocBadCount: 123,
                lastOpened: DateTime.now(),
              ),
              QueryOverviewCard(
                queryId: Uuid().v1(),
                queryName: 'Altgriechisch Abfrage',
                lang: Language.GRC,
                iconId: 1,
                vocGoodCount: 123,
                vocBadCount: 123,
                lastOpened: DateTime.now(),
              ),
              SizedBox(
                height: height * 0.1,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class QueryOverviewCard extends StatefulWidget {
  QueryOverviewCard({
    this.queryId,
    this.queryName,
    this.lang,
    this.iconId,
    this.vocGoodCount,
    this.vocBadCount,
    this.lastOpened,
  });

  factory QueryOverviewCard.fromProxy({QueryProxy proxy}) {
    var queryOverviewCard = QueryOverviewCard(
      queryId: proxy.id,
      queryName: proxy.name,
      lang: proxy.lang,
      iconId: proxy.iconId,
      vocGoodCount: proxy.goodCount,
      vocBadCount: proxy.badCount,
      lastOpened: proxy.lastAccessed,
    );
    return queryOverviewCard;
  }

  final String queryId;
  final String queryName;
  final Language lang;
  final int iconId;
  final int vocGoodCount;
  final int vocBadCount;
  final DateTime lastOpened;

  @override
  _QueryOverviewCardState createState() => _QueryOverviewCardState();
}

class _QueryOverviewCardState extends State<QueryOverviewCard> {
  void _showCardActionDialog() {
    showDialog(
        context: context,
        builder: (BuildContext context) {
          final double height = MediaQuery.of(context).size.height;
          final double width = MediaQuery.of(context).size.width;
          return Dialog(
            elevation: 12.0,
            child: Container(
              decoration: BoxDecoration(
                color: secondaryColor,
                borderRadius: BorderRadius.circular(width * 0.025),
              ),
              height: height * 0.25,
              width: width * 0.4,
              child: Padding(
                padding: EdgeInsets.all(width * 0.03),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      'Abfrage-Optionen',
                      style: GoogleFonts.raleway(
                          fontSize: width * 0.06, fontWeight: FontWeight.bold),
                    ),
                    Padding(
                      padding: EdgeInsets.only(bottom: width * 0.03),
                      child: Text(
                        'Was möchtest du mit der Abfrage tun?',
                        style: GoogleFonts.sourceSansPro(
                          fontSize: width * 0.045,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    //Todo: Fix access problem
                    GestureDetector(
                      onTap: () {
                        log('Delete ${widget.queryId}');
                        // context
                        //     .read<QueryPageBloc>()
                        //     .add(QueryPageEvent.deleteEvent);
                        Navigator.pop(context);
                      },
                      child: Material(
                        elevation: 4.0,
                        borderRadius: BorderRadius.circular(height * 0.04),
                        child: Container(
                          height: height * 0.06,
                          width: width * 0.4,
                          decoration: BoxDecoration(
                            color: accentColor,
                            borderRadius: BorderRadius.all(
                              Radius.circular(height * 0.04),
                            ),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.delete,
                                color: primaryTextColor,
                                size: height * 0.03,
                              ),
                              Text(
                                'Löschen',
                                style: GoogleFonts.notoSans(
                                  fontSize: height * 0.025,
                                  color: primaryTextColor,
                                  fontWeight: FontWeight.bold,
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          );
        });
  }

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
                elevation: 6.0,
                borderRadius: BorderRadius.circular(width * 0.025),
                child: Container(
                  decoration: BoxDecoration(
                    color: LanguageHelper.getLanguageColor(widget.lang),
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
                                onPressed: () => _showCardActionDialog()),
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
                      onTap: () =>
                          log('Good query started for ${widget.queryId}'),
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
                                widget.vocGoodCount.toString(),
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
                      onTap: () =>
                          log('Bad query started for ${widget.queryId}'),
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
                                widget.vocGoodCount.toString(),
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
