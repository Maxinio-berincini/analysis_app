import 'package:flutter/material.dart';

import 'helper/textstyle.dart';

class About extends StatefulWidget {
  const About({Key? key}) : super(key: key);

  @override
  State<About> createState() => _AboutState();
}


class _AboutState extends State<About> {
  @override
  Widget build(BuildContext context) {
    final isDarkMode = Theme.of(context).canvasColor != Colors.white;
    return Scaffold(
      appBar: AppBar(
        title:
            const FittedBox(child: Text('Über', style: Style.AppBarMainFont)),
        backgroundColor: const Color(0xFFA81619),
        leading: IconButton(
          icon: const Icon(Icons.clear_rounded),
          onPressed: () => Navigator.of(context).pop(),
        ),
      ),
      body: Stack(
        children: <Widget>[
          _getContent(context),
        ],
      ),
    );
  }

  Widget _getContent(context) {
    double CategoryTopSpacing = 20;
    double CategoryBottomSpacing = 40;
    return ListView(
      padding: const EdgeInsets.all(16),
      children: [
        const SizedBox(height: 10),
        Row(
          children: [
            Text('Über',
                style: Style.HomePageTitleFont.merge(
                    TextStyle(color: Theme.of(context).primaryColor))),
          ],
        ),
        const Divider(height: 5, thickness: 1),
        SizedBox(height: CategoryTopSpacing),
        Text(
          "Diese App ist im Rahmen einer Projektarbeit an der Universität St. Gallen entstanden. \nGeschrieben wurde sie von Max Beringer, für den Kurs Analysis, im Bachelor of Computer Science.",
          style: Style.FlowingTextFont.merge(
              TextStyle(color: Theme.of(context).cardColor)),
        ),
        SizedBox(height: CategoryBottomSpacing),
        const SizedBox(height: 10),
        Row(
          children: [
            Text('Quellen',
                style: Style.HomePageTitleFont.merge(
                    TextStyle(color: Theme.of(context).primaryColor))),
          ],
        ),
        const Divider(height: 5, thickness: 1),
        SizedBox(height: CategoryTopSpacing),
        RichText(
          text: TextSpan(
            text: 'Teschl, Gerald & Susanne Teschl (2013):',
            style: Style.FlowingTextFont.merge(
                TextStyle(color: Theme.of(context).cardColor)),
            children: <TextSpan>[
              TextSpan(text: ' Mathemaik für Informatiker Band 1 ', style: Style.FlowingTextFont.merge(TextStyle(fontStyle: FontStyle.italic, color: Theme.of(context).cardColor))),
              TextSpan(text: '(4. Aufl.). Springer'),
            ],
          ),
        ),
        SizedBox(height: CategoryBottomSpacing),
        RichText(
          text: TextSpan(
            text: 'Oberguggenberger, Michael & Alexander Ostermann (2008):',
            style: Style.FlowingTextFont.merge(
                TextStyle(color: Theme.of(context).cardColor)),
            children: <TextSpan>[
              TextSpan(text: ' Analysis für Informatiker ', style: Style.FlowingTextFont.merge(TextStyle(fontStyle: FontStyle.italic, color: Theme.of(context).cardColor))),
              TextSpan(text: '(2. Aufl.). Springer'),
            ],
          ),
        ),
        SizedBox(height: CategoryBottomSpacing),
      ],
    );
  }
}
