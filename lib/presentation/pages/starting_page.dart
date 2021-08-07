import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:swoc_application/constants/constants.dart';
import 'package:swoc_application/presentation/components/bottom_nav_bar.dart';
import 'package:swoc_application/presentation/components/custom_app_bar.dart';
import 'package:swoc_application/presentation/components/custom_small_action_button.dart';
import 'package:swoc_application/presentation/screens/general_start_screen.dart';
import 'package:swoc_application/presentation/screens/grammar_start_screen.dart';
import 'package:swoc_application/presentation/screens/query_start_screen.dart';

class StartingPage extends StatefulWidget {
  @override
  _StartingPageState createState() => _StartingPageState();
}

class _StartingPageState extends State<StartingPage> {
  final PageStorageBucket bucket = new PageStorageBucket();
  static List<Widget> pages = [
    GrammarStartScreen(key: PageStorageKey('grammar')),
    GeneralStartScreen(key: PageStorageKey('start')),
    QueryStartScreen(key: PageStorageKey('queries')),
  ];

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
        body: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            //Custom App Bar
            CustomAppBar(
              height: height,
              width: width,
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
          height: height,
          width: width,
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
