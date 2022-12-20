import 'package:flutter/material.dart';
import 'package:flutter_tex/flutter_tex.dart';

import '../../../helper/textstyle.dart';

class Geomatrical extends StatefulWidget {
  const Geomatrical({Key? key}) : super(key: key);

  @override
  State<Geomatrical> createState() => _GeomatricalState();
}

class _GeomatricalState extends State<Geomatrical> {
  @override
  Widget build(BuildContext context) {
    double TopSpacing = 20;
    double BottomSpacing = 20;
    return Scaffold(
      appBar: AppBar(
        title: const FittedBox(
            child: Text('Geometrische Reihen', style: Style.AppBarMainFont)),
        backgroundColor: const Color(0xFFA81619),
        leading: IconButton(
          icon: const Icon(Icons.clear_rounded),
          onPressed: () => Navigator.of(context).pop(),
        ),
      ),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          const SizedBox(height: 10),
          Row(
            children: [
              Text('Geometrische Reihen',
                  style: Style.HomePageTitleFont.merge(
                      TextStyle(color: Theme.of(context).primaryColor))),
            ],
          ),
          const Divider(height: 5, thickness: 1),
          SizedBox(height: TopSpacing),
          RichText(
            text: TextSpan(
              text:
                  'Eine Reihe, bei der sich die Glieder immer um den gleichen Faktor (q) unterscheiden, nennen wir eine ',
              style: Style.FlowingTextFont.merge(
                  TextStyle(color: Theme.of(context).cardColor)),
              children: <TextSpan>[
                TextSpan(
                    text: 'geometrische Reihe', style: Style.HighlightColor),
                TextSpan(text: '.\n zum Beispiel:'),
              ],
            ),
          ),
          TeXView(
            child: TeXViewDocument(
              r"""
     $$\sum_{k=0}^\infty q^k$$<br>
    
     
     
     """,
              style: Style.Equation,
            ),
          ),
          SizedBox(height: BottomSpacing),
        ],
      ),
    );
  }
}
