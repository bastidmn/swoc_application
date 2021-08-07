import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:swoc_application/constants/constants.dart';

class VocCard extends StatefulWidget {
  final double width;
  final double height;
  final String vocLatin;
  final String vocGerman;
  bool isRevealed;

  VocCard({
    this.width,
    this.height,
    this.vocLatin,
    this.vocGerman,
    this.isRevealed,
  });

  @override
  _VocCardState createState() => _VocCardState();
}

class _VocCardState extends State<VocCard> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          widget.isRevealed = ! widget.isRevealed;
        });
      },
      child: Material(
        elevation: 4.0,
        borderRadius: BorderRadius.all(Radius.circular(widget.width * 0.02)),
        child: Container(
          height: widget.height * 0.5,
          width: widget.width * 0.75,
          decoration: BoxDecoration(
            color: secondaryColor,
            borderRadius: BorderRadius.all(Radius.circular(widget.width * 0.02)),
          ),
          child: Padding(
            padding: EdgeInsets.all(widget.width * 0.06),
            child: widget.isRevealed
                ? Column(
                    children: [
                      Expanded(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'vocare, voco',
                              style: GoogleFonts.sourceSansPro(
                                fontSize: widget.width * 0.05,
                                color: secondaryTextColor,
                              ),
                            ),
                            Text(
                              'vocavi, vocatum',
                              style: GoogleFonts.sourceSansPro(
                                fontSize: widget.width * 0.05,
                                color: secondaryTextColor,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Divider(
                        height: 1,
                        color: secondaryAltTextColor,
                      ),
                      Expanded(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'nennen, bezeichnen (als),',
                              style: GoogleFonts.sourceSansPro(
                                fontSize: widget.width * 0.05,
                                color: secondaryTextColor,
                              ),
                            ),
                            Text(
                              'anrufen',
                              style: GoogleFonts.sourceSansPro(
                                fontSize: widget.width * 0.05,
                                color: secondaryTextColor,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  )
                : Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'vocare, voco',
                        style: GoogleFonts.sourceSansPro(
                          fontSize: widget.width * 0.05,
                          color: secondaryTextColor,
                        ),
                      ),
                      Text(
                        'vocavi, vocatum',
                        style: GoogleFonts.sourceSansPro(
                          fontSize: widget.width * 0.05,
                          color: secondaryTextColor,
                        ),
                      ),
                    ],
                  ),
          ),
        ),
      ),
    );
  }
}
