import 'package:flutter/material.dart';

class StartingPageContentCard extends StatelessWidget {
  final double width;
  final double height;
  final Color cardColor;
  final Widget content;
  final Function function;

  StartingPageContentCard({
    this.width,
    this.height,
    this.cardColor,
    this.content,
    this.function,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: function,
      child: Padding(
        padding: EdgeInsets.only(left: width * 0.03),
        child: Container(
          width: width * 0.6,
          height: height * 0.25,
          decoration: BoxDecoration(
            color: cardColor,
            borderRadius: BorderRadius.all(
              Radius.circular(width * 0.01),
            ),
          ),
          child: content,
        ),
      ),
    );
  }
}
