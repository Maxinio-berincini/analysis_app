import 'package:flutter/material.dart';
import 'package:flutter_tex/flutter_tex.dart';

import '../../../helper/textstyle.dart';

class WhatIsRow extends StatefulWidget {
  const WhatIsRow({Key? key}) : super(key: key);

  @override
  State<WhatIsRow> createState() => _WhatIsRowState();
}

class _WhatIsRowState extends State<WhatIsRow> {
  @override
  Widget build(BuildContext context) {
    double TopSpacing = 20;
    double BottomSpacing = 20;
    return Scaffold(
      appBar: AppBar(
        title: const FittedBox(
            child: Text('Was ist eine Reihe', style: Style.AppBarMainFont)),
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
              Text('Was ist eine Reihe',
                  style: Style.HomePageTitleFont.merge(
                      TextStyle(color: Theme.of(context).primaryColor))),
            ],
          ),
          const Divider(height: 5, thickness: 1),
          SizedBox(height: TopSpacing),
          RichText(
            text: TextSpan(
              text: 'Die Summe der Glieder einer Folge wird als ',
              style: Style.FlowingTextFont.merge(
                  TextStyle(color: Theme.of(context).cardColor)),
              children: <TextSpan>[
                TextSpan(text: 'Reihe', style: Style.HighlightColor),
                TextSpan(
                    text:
                        ' bezeichnet.\nDie Summe der Glieder wird mit dem Summen-Symbol geschrieben.'),
              ],
            ),
          ),
          SizedBox(
            height: BottomSpacing,
          ),
          TeXView(
            child: TeXViewDocument(
              r"""
     $$s_n = \sum_{i=1}^n  a_i$$<p> $$= a_1 + a_2 + a_3 + ... + a_n$$""",
              style: Style.Equation,
            ),
          ),
          SizedBox(height: BottomSpacing),
        ],
      ),
    );
  }
}
