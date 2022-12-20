import 'package:flutter/material.dart';

import '../../../helper/textstyle.dart';


class HeronFolge extends StatefulWidget {
  const HeronFolge({Key? key}) : super(key: key);

  @override
  State<HeronFolge> createState() => _HeronFolgeState();
}

class _HeronFolgeState extends State<HeronFolge> {
  @override
  Widget build(BuildContext context) {
    double TopSpacing = 20;
    double BottomSpacing = 20;
    return Scaffold(
        appBar: AppBar(
          title:
          const FittedBox(child: Text('Heronsche Folge', style: Style.AppBarMainFont)),
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
                Text('Heronsche Folge',
                    style: Style.HomePageTitleFont.merge(
                        TextStyle(color: Theme.of(context).primaryColor))),
              ],
            ),
            const Divider(height: 5, thickness: 1),
            SizedBox(height: TopSpacing),
            Text('Heron entdeckte ein Verfahren zur Berechnung von Wurzeln, mithilfe der Geometrie. Er wusste, dass ein Quadrat mit einer Seitenlänge a die Wurzel ist von einem Quadrat mit der Fläche A.\nAlso betrachtete er eine Folge von Rechtecken, die alle die Fläche A hatten und deren Seitenlängen sich immer mehr annähern, durch die Berechnung des Durchschnittes der Seitenlänge des vorhergehenden Rechteckes.',
                style: Style.FlowingTextFont.merge(
                    TextStyle(color: Theme.of(context).primaryColor))),
            SizedBox(height: BottomSpacing),

          ],
        ),
    );
  }
}
