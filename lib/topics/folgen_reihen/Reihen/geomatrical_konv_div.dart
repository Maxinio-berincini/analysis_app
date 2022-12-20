import 'package:flutter/material.dart';
import 'package:flutter_tex/flutter_tex.dart';

import '../../../helper/textstyle.dart';

class GeomatricalKonvDiv extends StatefulWidget {
  const GeomatricalKonvDiv({Key? key}) : super(key: key);

  @override
  State<GeomatricalKonvDiv> createState() => _GeomatricalKonvDivState();
}

class _GeomatricalKonvDivState extends State<GeomatricalKonvDiv> {
  @override
  Widget build(BuildContext context) {
    double TopSpacing = 20;
    double BottomSpacing = 20;
    return Scaffold(
      appBar: AppBar(
        title: const FittedBox(
            child: Text('geometrische Reihen', style: Style.AppBarMainFont)),
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
              text: 'Der ',
              style: Style.FlowingTextFont.merge(
                  TextStyle(color: Theme.of(context).cardColor)),
              children: <TextSpan>[
                TextSpan(text: 'Grenzwert ', style: Style.HighlightColor),
                TextSpan(
                    text:
                        'einer geometrischen Reihe wird wie folgt berechnet:'),
              ],
            ),
          ),
          TeXView(
            child: TeXViewDocument(
              r"""
     $$\sum_{k=0}^\infty q^k = \frac{1}{1-q}$$<br>
    
     
     
     """,
              style: Style.Equation,
            ),
          ),
          SizedBox(height: BottomSpacing),
          RichText(
            text: TextSpan(
              text: 'Falls ',
              style: Style.FlowingTextFont.merge(
                  TextStyle(color: Theme.of(context).cardColor)),
              children: <TextSpan>[
                TextSpan(text: '|q| ≥ 1', style: Style.HighlightColor),
                TextSpan(text: ', dann ist die geometrische Reihe '),
                TextSpan(text: 'divergent', style: Style.HighlightColor),
                TextSpan(text: '.'),
              ],
            ),
          ),
          SizedBox(height: TopSpacing * 2),
          FittedBox(
            fit: BoxFit.scaleDown,
            alignment: Alignment.bottomLeft,
            child: Row(
              children: [
                Text('Anwendung in der Informatik',
                    style: Style.HomePageTitleFont.merge(
                        TextStyle(color: Theme.of(context).primaryColor))),
              ],
            ),
          ),
          const Divider(height: 5, thickness: 1),
          SizedBox(height: BottomSpacing),
          Text('Bei der Berechnung von Laufzeiten eines Programms können Loops, welche voneinander abhängig sind, als Summe geschrieben werden. \nDa dies dann eine geometrische Reihe ist, kann man mithilfe der obenstehenden Formel den Grenzwert einfacher berechnen und dadurch die Laufzeit.',
              style: Style.FlowingTextFont.merge(
                  TextStyle(color: Theme.of(context).primaryColor))),
        ],
      ),
    );
  }
}
