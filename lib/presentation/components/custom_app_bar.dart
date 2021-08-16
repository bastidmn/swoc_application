import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:swoc_application/constants/constants.dart';
import 'package:swoc_application/logic/blocs/starting_page_bloc.dart';

class CustomAppBar extends StatefulWidget {
  @override
  _CustomAppBarState createState() => _CustomAppBarState();
}

class _CustomAppBarState extends State<CustomAppBar> {
  @override
  Widget build(BuildContext context) {
    final double height = MediaQuery.of(context).size.height;
    final double width = MediaQuery.of(context).size.width;

    return Material(
      elevation: 8.0,
      child: Container(
        height: height * 0.09,
        width: width,
        decoration: BoxDecoration(
          // gradient: LinearGradient(
          //   begin: Alignment.bottomCenter,
          //   end: Alignment.topCenter,
          //   colors: [
          //     primaryColor,
          //     primaryColorDark,
          //   ],
          // ),
          color: primaryColor,
        ),
        child: Padding(
          padding: EdgeInsets.only(left: width * 0.03),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              BlocBuilder<StartingPageBloc, StartingPageState>(
                builder: (context, state) {
                  return Text(
                    (state.getPageCount() == 1)
                        ? 'Startseite'
                        : (state.getPageCount() == 2)
                            ? 'Abfragen'
                            : 'Wortschatz',
                    style: GoogleFonts.raleway(
                      fontSize: height * 0.045,
                      fontWeight: FontWeight.w800,
                      color: primaryTextColor,
                    ),
                  );
                },
              ),
              // Container(
              //   height: height * 0.1,
              //   child: Image.asset(
              //     // 'assets/images/Swop_icon_transparent.png',
              //     'assets/images/Swoc_UI_logo.png',
              //     fit: BoxFit.fitHeight,
              //     filterQuality: FilterQuality.high,
              //   ),
              // ),
              Spacer(),
              GestureDetector(
                child: Tooltip(
                  message: 'Einstellungen',
                  textStyle: GoogleFonts.sourceSansPro(
                    fontSize: height * 0.045,
                    color: primaryTextColor,
                  ),
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: width * 0.045),
                    child: Icon(
                      Icons.settings_sharp,
                      color: primaryTextColor,
                      size: height * 0.05,
                    ),
                  ),
                ),
                onTap: () => Navigator.pushNamed(context, '/settings'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
