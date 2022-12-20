import 'package:flutter/material.dart';
import 'package:flutter_tex/flutter_tex.dart';

import '../../../../helper/textstyle.dart';

class KonvRules extends StatefulWidget {
  const KonvRules({Key? key}) : super(key: key);

  @override
  State<KonvRules> createState() => _KonvRulesState();
}

class _KonvRulesState extends State<KonvRules> {
  @override
  Widget build(BuildContext context) {
    double TopSpacing = 20;
    double BottomSpacing = 20;
    return Scaffold(
      appBar: AppBar(
        title: const FittedBox(
            child: Text('Rechenregeln', style: Style.AppBarMainFont)),
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
            child: Row(
              children: [
                Text('Rechenregeln für konvergente Folgen',
                    style: Style.HomePageTitleFont.merge(
                        TextStyle(color: Theme.of(context).primaryColor))),
              ],
            ),
          ),
          const Divider(height: 5, thickness: 1),
          SizedBox(height: TopSpacing),
          TeXView(
            child: TeXViewDocument(
              r"""
     \(\lim_{n \to \infty} (c * a_n) = c * a \) <br>für ein beliebiges \(c \in \N\) <br>
     <br> <br> \(\lim_{n \to \infty} (a_n \pm b_n) = a \pm b \) <br>
     <br> <br> \(\lim_{n \to \infty} (a_n * b_n) = a * b \) <br>
     <br> <br> \(\lim_{n \to \infty} \dfrac{a_n} {b_n} = \dfrac {a}{b},\) falls \(b \ne 0\) <br>
     
     
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
