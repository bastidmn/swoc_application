import 'package:flutter/material.dart';
import 'package:swoc_application/constants/constants.dart';

class CustomSmallActionButton extends StatelessWidget {
  final IconData icon;
  final Function onTap;

  CustomSmallActionButton({
    this.icon,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    final double _height = MediaQuery.of(context).size.height;
    final double _width = MediaQuery.of(context).size.width;

    return GestureDetector(
      onTap: onTap,
      child: Material(
        color: accentColor,
        elevation: 4.0,
        borderRadius: BorderRadius.all(Radius.circular(_height * 0.04)),
        child: SizedBox(
          height: _height * 0.08,
          width: _height * 0.08,
          child: Icon(
            icon,
            color: primaryTextColor,
            size: _height * 0.04,
          ),
        ),
      ),
    );
  }
}
