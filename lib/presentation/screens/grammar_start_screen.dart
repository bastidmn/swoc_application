import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:swoc_application/constants/constants.dart';
import 'package:swoc_application/presentation/components/grammar_topic_card.dart';

class GrammarStartScreen extends StatelessWidget {
  const GrammarStartScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final double width = MediaQuery.of(context).size.width;
    final double height = MediaQuery.of(context).size.height;

    return NotificationListener<OverscrollIndicatorNotification>(
      onNotification: (OverscrollIndicatorNotification overscroll) {
        overscroll.disallowGlow();
        return;
      },
      child: ListView(
        children: [
          Padding(
            padding: EdgeInsets.only(
              left: width * 0.03,
              top: width * 0.03,
              bottom: width * 0.015,
            ),
            child: Row(
              children: [
                Text(
                  'Grundlagen',
                  style: GoogleFonts.raleway(
                    //exo2(
                    color: secondaryTextColor,
                    fontSize: height * 0.035,
                    fontWeight: FontWeight.w900,
                  ),
                ),
              ],
            ),
          ),
          GrammarTopicCard(
            label: 'Verben',
            content: 'Konjugationen, Zeitformen',
            link: 'test',
          ),
          GrammarTopicCard(
            label: 'Substantive',
            content: 'Deklinationen, Fälle',
            link: 'test',
          ),
          GrammarTopicCard(
            label: 'Adjektive',
            content: 'Kongruenz, Steigerungen',
            link: 'test',
          ),
          GrammarTopicCard(
            label: 'Adverben',
            content: 'Bildung, Übersetzung',
            link: 'test',
          ),
          Padding(
            padding: EdgeInsets.only(
              left: width * 0.03,
              top: width * 0.03,
              bottom: width * 0.015,
            ),
            child: Row(
              children: [
                Text(
                  'Weitere Themen',
                  style: GoogleFonts.raleway(
                    //exo2(
                    color: secondaryTextColor,
                    fontSize: height * 0.035,
                    fontWeight: FontWeight.w900,
                  ),
                ),
              ],
            ),
          ),
          GrammarTopicCard(
            label: 'AcI',
            content: 'Vorkommen, Übersetzungsmöglichkeiten',
            link: 'test',
          ),
          GrammarTopicCard(
            label: 'Nominativ - Erweiterung',
            content: 'Ablativus Absolutus',
            link: 'test',
          ),
          GrammarTopicCard(
            label: 'Genitiv - Erweiterung',
            content: 'Ablativus Absolutus',
            link: 'test',
          ),
          GrammarTopicCard(
            label: 'Dativ - Erweiterung',
            content: 'Ablativus Absolutus',
            link: 'test',
          ),
          GrammarTopicCard(
            label: 'Akkusativ - Erweiterung',
            content: 'Ablativus Absolutus',
            link: 'test',
          ),
          GrammarTopicCard(
            label: 'Ablative - Erweiterung',
            content: 'Ablativus Absolutus',
            link: 'test',
          ),
          SizedBox(
            height: height * 0.1,
          ),
        ],
      ),
    );
  }
}
