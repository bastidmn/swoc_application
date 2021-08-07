import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:swoc_application/constants/constants.dart';

class BottomNavBar extends StatefulWidget {
  BottomNavBar({
    this.width,
    this.height,
    this.onPageChange,
  });

  final double width;
  final double height;
  final Function onPageChange;

  @override
  _BottomNavBarState createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int pageCounter = 1;

  @override
  Widget build(BuildContext context) {
    //Color init
    // Color _activeColor = Color.lerp(
    //   widget.primaryColor,
    //   widget.primaryDarkColor,
    //   0.5,
    // );
    Color _activeColor = accentColor;
    Color _passiveColor = secondaryTextColor;
    int sensitivity = 12;

    //Widget
    return GestureDetector(
      child: Container(
        height: widget.height * 0.09,
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
              child: (pageCounter == 0)
                  ? IconButton(
                      icon: Icon(
                        //Icons.menu_book,
                        Icons.note_add_outlined,
                        size: widget.height * 0.05,
                        color: _activeColor,
                      ),
                      onPressed: null,
                    )
                  : IconButton(
                      icon: Icon(
                        Icons.note_add_outlined,
                        size: widget.height * 0.05,
                        color: _passiveColor,
                      ),
                      onPressed: () {
                        setState(() {
                          pageCounter = 0;
                        });
                        widget.onPageChange(pageCounter);
                      },
                    ),
            ),
            Expanded(
              child: (pageCounter == 1)
                  ? IconButton(
                      icon: Icon(
                        Icons.home,
                        size: widget.height * 0.05,
                        color: _activeColor,
                      ),
                      onPressed: null,
                    )
                  : IconButton(
                      icon: Icon(
                        Icons.home,
                        size: widget.height * 0.05,
                        color: _passiveColor,
                      ),
                      onPressed: () {
                        setState(() {
                          pageCounter = 1;
                        });
                        widget.onPageChange(pageCounter);
                      },
                    ),
            ),
            Expanded(
              child: (pageCounter == 2)
                  ? IconButton(
                      icon: Icon(
                        Icons.sort,
                        size: widget.height * 0.05,
                        color: _activeColor,
                      ),
                      onPressed: null,
                    )
                  : IconButton(
                      icon: Icon(
                        Icons.sort,
                        size: widget.height * 0.05,
                        color: _passiveColor,
                      ),
                      onPressed: () {
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
