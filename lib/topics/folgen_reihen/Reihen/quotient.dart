import 'package:flutter/material.dart';
import 'package:flutter_tex/flutter_tex.dart';

import '../../../helper/textstyle.dart';

class Quotient extends StatefulWidget {
  const Quotient({Key? key}) : super(key: key);

  @override
  State<Quotient> createState() => _QuotientState();
}

class _QuotientState extends State<Quotient> {
  @override
  Widget build(BuildContext context) {
    double TopSpacing = 20;
    double BottomSpacing = 20;
    return Scaffold(
      appBar: AppBar(
        title: const FittedBox(
            child: Text('Quotientenkriterium', style: Style.AppBarMainFont)),
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
                Text('Quotientenkriterium',
                    style: Style.HomePageTitleFont.merge(
                        TextStyle(color: Theme.of(context).primaryColor))),
              ],
            ),
          ),
          const Divider(height: 5, thickness: 1),
          SizedBox(height: TopSpacing),
          RichText(
            text: TextSpan(
              text: 'Wenn wir folgende Reihe auf Konvergenz untersuchen:',
              style: Style.FlowingTextFont.merge(
                  TextStyle(color: Theme.of(context).cardColor)),
            ),
          ),
          TeXView(
            child: TeXViewDocument(
              r"""
     $$\sum a_k$$
     """,
              style: Style.Equation,
            ),
          ),
          RichText(
            text: TextSpan(
              text:
                  'Können wir anhand einer Grenzwert-Berechnung feststellen, ob die Reihe konvergiert oder divergiert.',
              style: Style.FlowingTextFont.merge(
                  TextStyle(color: Theme.of(context).cardColor)),
            ),
          ),
          TeXView(
            child: TeXViewDocument(
              r"""
     $$q = \Bigg |\frac{a_k+1}{a_K}\Bigg |$$
     """,
              style: Style.Equation,
            ),
          ),
          RichText(
            text: TextSpan(
              text: 'Wenn ',
              style: Style.FlowingTextFont.merge(
                  TextStyle(color: Theme.of(context).cardColor)),
              children: <TextSpan>[
                TextSpan(text: 'q < 1', style: Style.HighlightColor),
                TextSpan(text: ', dann ist die Reihe '),
                TextSpan(text: 'Konvergent', style: Style.HighlightColor),
                TextSpan(text: '.\n\nWenn '),
                TextSpan(text: 'q ≥ 1', style: Style.HighlightColor),
                TextSpan(text: ', dann ist die Reihe '),
                TextSpan(text: 'Divergent', style: Style.HighlightColor),
                TextSpan(text: '.'),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
