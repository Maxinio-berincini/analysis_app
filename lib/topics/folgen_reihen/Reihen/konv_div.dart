import 'package:flutter/material.dart';

import '../../../helper/textstyle.dart';

class KonDiv extends StatefulWidget {
  const KonDiv({Key? key}) : super(key: key);

  @override
  State<KonDiv> createState() => _KonDivState();
}

class _KonDivState extends State<KonDiv> {
  @override
  Widget build(BuildContext context) {
    double TopSpacing = 20;
    double BottomSpacing = 20;
    return Scaffold(
      appBar: AppBar(
        title: const FittedBox(
            child: Text('Konvergenz & Divergenz', style: Style.AppBarMainFont)),
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
              Text('Konvergenz & Divergenz',
                  style: Style.HomePageTitleFont.merge(
                      TextStyle(color: Theme.of(context).primaryColor))),
            ],
          ),
          const Divider(height: 5, thickness: 1),
          SizedBox(height: TopSpacing),
          RichText(
            text: TextSpan(
              text:
                  'Wie auch Folgen können Reihen Konvergent oder Divergent sein.\nWenn die Summe aller Glieder einer Folge(Reihe) einen bestimmten Wert anstrebt, dann nennen wir die Reihe ',
              style: Style.FlowingTextFont.merge(
                  TextStyle(color: Theme.of(context).cardColor)),
              children: <TextSpan>[
                TextSpan(text: 'konvergent ', style: Style.HighlightColor),
                TextSpan(text: 'und den Grenzwert '),
                TextSpan(
                    text: 'die Summe der Reihe', style: Style.HighlightColor),
                TextSpan(
                    text:
                        '.\n\nIst eine Reihe nicht konvergent, nennen wir sie '),
                TextSpan(text: 'divergent', style: Style.HighlightColor),
                TextSpan(text: '.'),
              ],
            ),
          ),
          SizedBox(height: BottomSpacing),
        ],
      ),
    );
  }
}
