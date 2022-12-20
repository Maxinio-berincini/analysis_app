import 'package:flutter/material.dart';

import '../../../../helper/textstyle.dart';
import 'package:flutter_tex/flutter_tex.dart';

class KonvDef extends StatefulWidget {
  const KonvDef({Key? key}) : super(key: key);

  @override
  State<KonvDef> createState() => _KonvDefState();
}

class _KonvDefState extends State<KonvDef> {
  @override
  Widget build(BuildContext context) {
    double TopSpacing = 20;
    double BottomSpacing = 20;
    return Scaffold(
      appBar: AppBar(
        title: const FittedBox(
            child:
                Text('Definition', style: Style.AppBarMainFont)),
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
              Text('Konvergenz',
                  style: Style.HomePageTitleFont.merge(
                      TextStyle(color: Theme.of(context).primaryColor))),
            ],
          ),
          const Divider(height: 5, thickness: 1),
          SizedBox(height: TopSpacing),
          RichText(
            text: TextSpan(
              text:
                  'Wenn eine Folge sich immer mehr einem Wert annähert, diesen aber nie erreicht, nennt man die Folge ',
              style: Style.FlowingTextFont.merge(
                  TextStyle(color: Theme.of(context).cardColor)),
              children: <TextSpan>[
                TextSpan(text: 'konvergent', style: Style.HighlightColor),
                TextSpan(
                    text:
                        '.\nDie Folge konvergiert somit gegen einen bestimmten Wert, auch '),
                TextSpan(text: 'Grenzwert ', style: Style.HighlightColor),
                TextSpan(text: 'genannt.'),
              ],
            ),
          ),
          SizedBox(height: BottomSpacing),
          RichText(
            text: TextSpan(
              text: 'Dies wird geschrieben als ',
              style: Style.FlowingTextFont.merge(
                  TextStyle(color: Theme.of(context).cardColor)),
            ),
          ),
          TeXView(
            child: TeXViewDocument(
              r"""
     $$a = \lim_{n \to 0} a_n$$<br>""",
              style: Style.Equation,
            ),
          ),
          RichText(
            text: TextSpan(
              text:
                  'Wenn eine Folge den Grenzwert 0 hat, nennt man diese eine ',
              style: Style.FlowingTextFont.merge(
                  TextStyle(color: Theme.of(context).cardColor)),
              children: <TextSpan>[
                TextSpan(text: 'Nullfolge', style: Style.HighlightColor),
                TextSpan(text: '.'),
              ],
            ),
          ),
          SizedBox(height: BottomSpacing),
          RichText(
            text: TextSpan(
              text:
                  'Nimmt man aus einer Folge einen Teil der Folgeglieder, welcher ebenfalls unendlich lang ist, nennt man diese eine ',
              style: Style.FlowingTextFont.merge(
                  TextStyle(color: Theme.of(context).cardColor)),
              children: <TextSpan>[
                TextSpan(text: 'Teilfolge', style: Style.HighlightColor),
                TextSpan(
                    text:
                        '.\n\nZum Beispiel sind alle geraden natürlichen Zahlen eine Teilfolge von allen natürlichen Zahlen.'),
              ],
            ),
          ),
          SizedBox(height: BottomSpacing),
        ],
      ),
    );
  }
}
