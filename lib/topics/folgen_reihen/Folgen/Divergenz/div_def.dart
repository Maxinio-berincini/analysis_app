import 'package:flutter/material.dart';

import '../../../../helper/textstyle.dart';

class DivBestimmtDiv extends StatefulWidget {
  const DivBestimmtDiv({Key? key}) : super(key: key);

  @override
  State<DivBestimmtDiv> createState() => _DivBestimmtDivState();
}

class _DivBestimmtDivState extends State<DivBestimmtDiv> {
  @override
  Widget build(BuildContext context) {
    double TopSpacing = 20;
    double BottomSpacing = 20;
    return Scaffold(
        appBar: AppBar(
          title:
          const FittedBox(child: Text('Divergenz', style: Style.AppBarMainFont)),
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
                Text('Divergenz',
                    style: Style.HomePageTitleFont.merge(
                        TextStyle(color: Theme.of(context).primaryColor))),
              ],
            ),
            const Divider(height: 5, thickness: 1),
            SizedBox(height: TopSpacing),
            RichText(
              text: TextSpan(
                text:
                'Wenn eine Folge keinen bestimmbaren Grenzwert besitzt, nennen wir sie ',
                style: Style.FlowingTextFont.merge(
                    TextStyle(color: Theme.of(context).cardColor)),
                children: <TextSpan>[
                  TextSpan(text: 'divergent', style: Style.HighlightColor),
                  TextSpan(
                      text:
                      '.\n\nWenn eine Folge gegen unendlich geht, nennen wir sie '),
                  TextSpan(text: 'bestimmt divergent gegen unendlich', style: Style.HighlightColor),
                  TextSpan(text: ', bzw. wenn sie gegen unendlich geht, nennen wir sie '),
                  TextSpan(text: 'bestimmt divergent gegen unendlich', style: Style.HighlightColor),
                  TextSpan(text: '.'),
                ],
              ),
            ),
            SizedBox(height: BottomSpacing),

          ],
        ),
    );
  }
}
