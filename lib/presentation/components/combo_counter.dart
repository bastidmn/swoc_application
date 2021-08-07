import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ComboCounter extends StatefulWidget {
  final double height;
  final double width;
  final Color textColor;
  final Color altTextColor;
  int counter;

  ComboCounter(
      {this.width,
      this.height,
      this.textColor,
      this.altTextColor,
      this.counter});

  @override
  _ComboCounterState createState() => _ComboCounterState();
}

class _ComboCounterState extends State<ComboCounter> {
  // int _counter = 0;
  // int _maxCounter = 0;
  //
  // void incrementCounter() {
  //   setState(() {
  //     _counter++;
  //   });
  // }
  //
  // void resetCounter() {
  //   setState(() {
  //     _counter = 0;
  //   });
  // }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: widget.width,
      height: widget.height * 0.1,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: EdgeInsets.all(widget.width * 0.03),
            child: Text(
              'x${widget.counter}',
              style: GoogleFonts.chango(
                  fontSize: widget.height * 0.06, color: widget.textColor),
            ),
          ),
          // Text(
          //   'Combo ',
          //   style: GoogleFonts.sourceSansPro(
          //       fontSize: widget.height * 0.03, color: widget.altTextColor),
          // ),
        ],
      ),
    );
  }
}
