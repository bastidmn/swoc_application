import 'package:flutter/material.dart';
import 'package:swoc_application/constants/constants.dart';
import 'package:swoc_application/presentation/components/custom_action_button.dart';
import 'package:swoc_application/presentation/components/custom_app_bar_arrow.dart';
import 'package:swoc_application/presentation/screens/new_one_screen.dart';
import 'package:swoc_application/presentation/screens/new_three_screen.dart';
import 'package:swoc_application/presentation/screens/new_two_screen.dart';

class NewQueryPage extends StatefulWidget {
  @override
  _NewQueryPageState createState() => _NewQueryPageState();
}

class _NewQueryPageState extends State<NewQueryPage> {
  int pageCounter = 0;

  @override
  Widget build(BuildContext context) {
    final double height = MediaQuery.of(context).size.height;
    final double width = MediaQuery.of(context).size.width;
    PageController _pageController = new PageController(
      initialPage: 0,
    );

    void _forward() {
      (pageCounter >= 2)
          ? Navigator.pushReplacementNamed(context, '/querypage')
          : setState(() {
              pageCounter++;
              _pageController.animateToPage(
                pageCounter,
                duration: Duration(milliseconds: 400),
                curve: Curves.easeInOutQuad,
              );
            });
    }

    void _backward() {
      (pageCounter <= 0)
          ? Navigator.pop(context)
          : setState(() {
              pageCounter--;
              _pageController.animateToPage(
                pageCounter,
                duration: Duration(milliseconds: 400),
                curve: Curves.easeInOutQuad,
              );
            });
    }
    // int pageCounter = 0;

    return SafeArea(
      child: Scaffold(
        bottomSheet: Padding(
          padding: EdgeInsets.only(bottom: height * 0.04),
        ),
        backgroundColor: backgroundColor,
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
        floatingActionButton: CustomActionButton(
          text: 'Weiter',
          icon: null,
          onTap: _forward,
        ),
        body: Column(
          children: [
            CustomAppBarArrow(
              height: height,
              width: width,
              title: 'Neue Abfrage',
              isSettingsPage: false,
              onTap: _backward,
            ),
            Expanded(
              child: PageView(
                scrollDirection: Axis.horizontal,
                controller: _pageController,
                physics: NeverScrollableScrollPhysics(),
                children: [
                  NewOneScreen(),
                  NewTwoScreen(),
                  NewThreeScreen(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
