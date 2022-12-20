import 'package:flutter/material.dart';

import '../../../helper/textstyle.dart';

// This file contains the content of the first subtopic of the topic "Folgen und Reihen"

class WhatIsSequence extends StatefulWidget {
  const WhatIsSequence({Key? key}) : super(key: key);

  @override
  State<WhatIsSequence> createState() => _WhatIsSequenceState();
}

class _WhatIsSequenceState extends State<WhatIsSequence> {
  @override
  Widget build(BuildContext context) {
    double TopSpacing = 20;
    double BottomSpacing = 20;
    return Scaffold(
        appBar: AppBar(
          title:
          const FittedBox(child: Text('Was ist eine Folge', style: Style.AppBarMainFont)),
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
                Text('Was ist eine Folge',
                    style: Style.HomePageTitleFont.merge(
                        TextStyle(color: Theme.of(context).primaryColor))),
              ],
            ),
            const Divider(height: 5, thickness: 1),
            SizedBox(height: TopSpacing),

            // The Text is written in separate sections to make certain words highlighted
            RichText(
              text: TextSpan(
                text: 'Eine Folge ist eine Liste von Zahlen, welche einem spezifischen Muster folgen. Jede Zahl, auch ',
                style: Style.FlowingTextFont.merge(
                    TextStyle(color: Theme.of(context).cardColor)),
                children: <TextSpan>[
                  TextSpan(text: 'Glied ', style: Style.HighlightColor),
                  TextSpan(text: 'genannt, hat eine Position in der Folge, der sogenannte '),
                  TextSpan(text: 'Index', style: Style.HighlightColor),
                  TextSpan(text: '.'),
                ],
              ),
            ),
            SizedBox(height: BottomSpacing),
            RichText(
              text: TextSpan(
                text: 'Das ',
                style: Style.FlowingTextFont.merge(
                    TextStyle(color: Theme.of(context).cardColor)),
                children: <TextSpan>[
                  TextSpan(text: 'Bildungsgesetz ', style: Style.HighlightColor),
                  TextSpan(text: 'einer Folge beschreibt die Berechnung für die Glieder der Folge. Wenn die Glieder einer Folge durch vorhergehende Glieder der Folge berechnet wird, nennt man das Bildungsgesetz '),
                  TextSpan(text: 'rekursiv', style: Style.HighlightColor),
                  TextSpan(text: '.'),
                ],
              ),
            ),
            SizedBox(height: BottomSpacing),
            RichText(
              text: TextSpan(
                text: 'Falls die Glieder einer Folge abwechselnde Vorzeichen haben, nennt man die Folge ',
                style: Style.FlowingTextFont.merge(
                    TextStyle(color: Theme.of(context).cardColor)),
                children: <TextSpan>[
                  TextSpan(text: 'alternierend', style: Style.HighlightColor),
                  TextSpan(text: '.'),
                ],
              ),
            ),
          ],
        ),
    );
  }
}
