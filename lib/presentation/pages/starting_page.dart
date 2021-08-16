import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:swoc_application/constants/constants.dart';
import 'package:swoc_application/database/data_handler.dart';
import 'package:swoc_application/logic/blocs/starting_page_bloc.dart';
import 'package:swoc_application/presentation/components/custom_app_bar.dart';
import 'package:swoc_application/presentation/components/custom_small_action_button.dart';
import 'package:swoc_application/presentation/screens/dictionary_screen.dart';
import 'package:swoc_application/presentation/screens/general_start_screen.dart';
import 'package:swoc_application/presentation/screens/query_start_screen.dart';

class StartingPage extends StatefulWidget {
  @override
  _StartingPageState createState() => _StartingPageState();
}

class _StartingPageState extends State<StartingPage> {
  DataHandler dataHandler;

  final PageStorageBucket bucket = new PageStorageBucket();
  static List<Widget> pages = [
    DictionaryScreen(key: PageStorageKey('dictionary')),
    GeneralStartScreen(key: PageStorageKey('start')),
    QueryStartScreen(key: PageStorageKey('queries')),
  ];

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    PageController _pageController = new PageController(
      initialPage: 1,
    );

    return SafeArea(
      child: BlocProvider(
        create: (context) => StartingPageBloc(),
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
              BlocBuilder<StartingPageBloc, StartingPageState>(
                builder: (context, state) {
                  return CustomAppBar();
                },
              ),
              Expanded(
                child: PageStorage(
                  bucket: bucket,
                  child: BlocListener<StartingPageBloc, StartingPageState>(
                    listener: (context, state) {
                      double from = _pageController.page;
                      int to = state.getPageCount();
                      ((to - from).abs() > 1)
                          ? _pageController.animateToPage(to,
                              duration: Duration(milliseconds: 1200),
                              curve: Curves.ease)
                          : _pageController.animateToPage(
                              to,
                              duration: Duration(milliseconds: 800),
                              curve: Curves.ease,
                            );
                    },
                    child: PageView(
                      scrollDirection: Axis.horizontal,
                      controller: _pageController,
                      physics: NeverScrollableScrollPhysics(),
                      children: pages,
                    ),
                  ),
                ),
              ),
            ],
          ),
          bottomNavigationBar: BottomNavBar(),
        ),
      ),
    );
  }
}

class BottomNavBar extends StatefulWidget {
  @override
  _BottomNavBarState createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  @override
  Widget build(BuildContext context) {
    final double height = MediaQuery.of(context).size.height;
    Color _activeColor = accentColor;
    Color _passiveColor = secondaryTextColor;

    //Widget
    return Container(
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
              icon: BlocBuilder<StartingPageBloc, StartingPageState>(
                builder: (context, state) {
                  return Icon(
                    //Icons.menu_book,
                    Icons.note_add_outlined,
                    size: height * 0.05,
                    color: (state.getPageCount() == 0)
                        ? _activeColor
                        : _passiveColor,
                  );
                },
              ),
              onPressed: () {
                context
                    .read<StartingPageBloc>()
                    .add(StartingPageEvent.dictionaries);
              },
            ),
          ),
          Expanded(
            child: IconButton(
              icon: BlocBuilder<StartingPageBloc, StartingPageState>(
                builder: (context, state) {
                  return Icon(
                    Icons.home,
                    size: height * 0.05,
                    color: (state.getPageCount() == 1)
                        ? _activeColor
                        : _passiveColor,
                  );
                },
              ),
              onPressed: () {
                context.read<StartingPageBloc>().add(StartingPageEvent.home);
              },
            ),
          ),
          Expanded(
            child: IconButton(
              icon: BlocBuilder<StartingPageBloc, StartingPageState>(
                builder: (context, state) {
                  return Icon(
                    Icons.sort,
                    size: height * 0.05,
                    color: (state.getPageCount() == 2)
                        ? _activeColor
                        : _passiveColor,
                  );
                },
              ),
              onPressed: () {
                context.read<StartingPageBloc>().add(StartingPageEvent.queries);
              },
            ),
          ),
        ],
      ),
    );
  }
}
