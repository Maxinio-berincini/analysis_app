import 'package:flutter/material.dart';
import 'package:flutter_tex/flutter_tex.dart';

import '../../../helper/textstyle.dart';

class RulesRow extends StatefulWidget {
  const RulesRow({Key? key}) : super(key: key);

  @override
  State<RulesRow> createState() => _RulesRowState();
}

class _RulesRowState extends State<RulesRow> {
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
                Text('Rechenregeln für konvergente Reihen',
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
     \(\sum_{k=0}^\infty (c * a_k) = c * \sum_{k=0}^\infty a_k \) <p>für ein beliebiges \(c \in \R\) <br> <br>
     <br> <br> \(\sum_{k=0}^\infty (a_k \pm b_k) \) <br><br>\( = \sum_{k=0}^\infty a_k \pm \sum_{k=0}^\infty b_k \) <br>
    
     
     
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
