import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:swoc_application/constants/constants.dart';
import 'package:swoc_application/database/data_handler.dart';
import 'package:swoc_application/logic/blocs/starting_page_bloc.dart';
import 'package:swoc_application/models/language.dart';
import 'package:swoc_application/models/word.dart';
import 'package:swoc_application/presentation/components/custom_app_bar.dart';
import 'package:swoc_application/presentation/components/custom_small_action_button.dart';
import 'package:swoc_application/presentation/screens/dictionary_screen.dart';
import 'package:swoc_application/presentation/screens/general_start_screen.dart';
import 'package:swoc_application/presentation/screens/grammar_start_screen.dart';
import 'package:swoc_application/presentation/screens/query_start_screen.dart';

class StartingPage extends StatefulWidget {
  @override
  _StartingPageState createState() => _StartingPageState();
}

class _StartingPageState extends State<StartingPage> {
  final PageStorageBucket bucket = new PageStorageBucket();
  DataHandler dataHandler;
  static List<Widget> pages = [
    DictionaryScreen(key: PageStorageKey('dictionary')),
    GeneralStartScreen(key: PageStorageKey('start')),
    QueryStartScreen(key: PageStorageKey('queries')),
  ];
  CustomAppBar appBar = new CustomAppBar('Übersicht');

  //StartingPageBloc startingPageBloc;

  @override
  void initState() {
    super.initState();
    //startingPageBloc = BlocProvider.of<StartingPageBloc>(context);
  }

  @override
  void dispose() {
    super.dispose();
    //startingPageBloc.close();
  }

  @override
  Widget build(BuildContext context) {
    final double height = MediaQuery.of(context).size.height;
    final double width = MediaQuery.of(context).size.width;
    PageController _pageController = new PageController(
      initialPage: 1,
    );

    return SafeArea(
      child: Scaffold(
        backgroundColor: backgroundColor,
        floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
        floatingActionButton: CustomSmallActionButton(
          icon: Icons.add,
          onTap: () => Navigator.pushNamed(context, '/newquery'),
        ),
        //onTap: () => {dataHandler.addWord(test)}),
        body: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            //Custom App Bar
            CustomAppBar(
              'Übersicht',
            ),
            //Body:
            //Letzte Abfrage Fortsetzen+Stats, Meine Abfragen, Neue Abfrage Vorschläge, Lernvideos(YT-Integration)
            Expanded(
              child: PageStorage(
                bucket: bucket,
                child: PageView(
                  scrollDirection: Axis.horizontal,
                  controller: _pageController,
                  physics: NeverScrollableScrollPhysics(),
                  children: pages,
                ),
              ),
            ),
          ],
        ),
        bottomNavigationBar: BottomNavBar(
          onPageChange: (int page) {
            setState(() {
              ((page - _pageController.page).abs() > 1)
                  ? _pageController.animateToPage(
                      page,
                      duration: Duration(milliseconds: 1200),
                      curve: Curves.ease,
                    )
                  : _pageController.animateToPage(
                      page,
                      duration: Duration(milliseconds: 800),
                      curve: Curves.ease,
                    );
              // _pageController.jumpToPage(page);
            });
          },
        ),
      ),
    );
  }
}

class BottomNavBar extends StatefulWidget {
  BottomNavBar({
    this.onPageChange,
  });

  final Function onPageChange;

  @override
  _BottomNavBarState createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int pageCounter = 1;

  @override
  Widget build(BuildContext context) {
    final double height = MediaQuery.of(context).size.height;
    final double width = MediaQuery.of(context).size.width;
    Color _activeColor = accentColor;
    Color _passiveColor = secondaryTextColor;
    int sensitivity = 12;

    //Widget
    return GestureDetector(
      child: Container(
        height: height * 0.09,
        decoration: BoxDecoration(
          color: secondaryColor,
          border: Border(
            top: BorderSide(
              color: Color(0xFF999999),
              width: 1.0,
            ),
          ),
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            //Left Button
            //
            Expanded(
              child: IconButton(
                icon: Icon(
                  //Icons.menu_book,
                  Icons.note_add_outlined,
                  size: height * 0.05,
                  color: (pageCounter == 0) ? _activeColor : _passiveColor,
                ),
                onPressed: (pageCounter == 0)
                    ? null
                    : () {
                        setState(() {
                          pageCounter = 0;
                        });
                        widget.onPageChange(pageCounter);
                      },
              ),
            ),
            Expanded(
                child: IconButton(
              icon: Icon(
                Icons.home,
                size: height * 0.05,
                color: (pageCounter == 1) ? _activeColor : _passiveColor,
              ),
              onPressed: (pageCounter == 1)
                  ? null
                  : () {
                      setState(() {
                        pageCounter = 1;
                      });
                      widget.onPageChange(pageCounter);
                    },
            )),
            Expanded(
              child: IconButton(
                icon: Icon(
                  Icons.sort,
                  size: height * 0.05,
                  color: (pageCounter == 2) ? _activeColor : _passiveColor,
                ),
                onPressed: (pageCounter == 2)
                    ? null
                    : () {
                        setState(() {
                          pageCounter = 2;
                        });
                        widget.onPageChange(pageCounter);
                      },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
