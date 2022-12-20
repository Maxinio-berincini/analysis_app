import 'package:flutter/material.dart';
import 'package:flutter_tex/flutter_tex.dart';

import '../../../helper/textstyle.dart';
class Minorante extends StatefulWidget {
  const Minorante({Key? key}) : super(key: key);

  @override
  State<Minorante> createState() => _MinoranteState();
}

class _MinoranteState extends State<Minorante> {
  @override
  Widget build(BuildContext context) {
    double TopSpacing = 20;
    double BottomSpacing = 20;
    return Scaffold(
        appBar: AppBar(
          title:
          const FittedBox(child: Text('Minorantenkriterium', style: Style.AppBarMainFont)),
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
            FittedBox(
              fit: BoxFit.scaleDown,
              alignment: Alignment.bottomLeft,
              child: Row(
                children: [
                  Text('Minorantenkriterium',
                      style: Style.HomePageTitleFont.merge(
                          TextStyle(color: Theme.of(context).primaryColor))),
                ],
              ),
            ),
            const Divider(height: 5, thickness: 1),
            SizedBox(height: TopSpacing),
            RichText(
              text: TextSpan(
                text: 'Das ',
                style: Style.FlowingTextFont.merge(
                    TextStyle(color: Theme.of(context).cardColor)),
                children: <TextSpan>[
                  TextSpan(text: 'Minorantenkriterium ', style: Style.HighlightColor),
                  TextSpan(
                      text:
                      'sagt, dass die Reihe'),
                ],
              ),
            ),
            TeXView(
              child: TeXViewDocument(
                r"""
     $$\sum a_n$$
     """,
                style: Style.Equation,
              ),
            ),
            RichText(
              text: TextSpan(
                text: '',
                style: Style.FlowingTextFont.merge(
                    TextStyle(color: Theme.of(context).cardColor)),
                children: <TextSpan>[
                  TextSpan(text: 'divergiert', style: Style.HighlightColor),
                  TextSpan(text: ', wenn es eine andere Reihe'),
                ],
              ),
            ),
            TeXView(
              child: TeXViewDocument(
                r"""
     $$\sum b_n$$
     """,
                style: Style.Equation,
              ),
            ),
            RichText(
              text: TextSpan(
                text: 'gibt von der man weiss, dass sie divigiert und zusätzlich für jedes Reihenglied folgendes gilt:',
                style: Style.FlowingTextFont.merge(
                    TextStyle(color: Theme.of(context).cardColor)),
              ),
            ),
            TeXView(
              child: TeXViewDocument(
                r"""
     $$a_n \geq b_n$$
     """,
                style: Style.Equation,
              ),
            ),
            RichText(
              text: TextSpan(
                text: 'Die zweite Reihe wird dann ',
                style: Style.FlowingTextFont.merge(
                    TextStyle(color: Theme.of(context).cardColor)),
                children: <TextSpan>[
                  TextSpan(text: 'Minorante ', style: Style.HighlightColor),
                  TextSpan(text: 'genannt.'),
                ],
              ),
            ),


          ],
        ),
    );
  }
}
