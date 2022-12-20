import 'package:flutter/material.dart';

import '../../../../helper/textstyle.dart';


class MonotonBeschraenkt extends StatefulWidget {
  const MonotonBeschraenkt({Key? key}) : super(key: key);

  @override
  State<MonotonBeschraenkt> createState() => _MonotonBeschraenktState();
}

class _MonotonBeschraenktState extends State<MonotonBeschraenkt> {
  @override
  Widget build(BuildContext context) {
    double TopSpacing = 20;
    double BottomSpacing = 20;
    return Scaffold(
        appBar: AppBar(
          title:
          const FittedBox(child: Text('Monoton & Beschränkt', style: Style.AppBarMainFont)),
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
                Text('Monotonie',
                    style: Style.HomePageTitleFont.merge(
                        TextStyle(color: Theme.of(context).primaryColor))),
              ],
            ),
            const Divider(height: 5, thickness: 1),
            SizedBox(height: TopSpacing),
            RichText(
              text: TextSpan(
                text: 'Folgen können noch weiter beschrieben werden, indem man das Wachstum einer Folge betrachtet. So nennt man eine Folge ',
                style: Style.FlowingTextFont.merge(
                    TextStyle(color: Theme.of(context).cardColor)),
                children: <TextSpan>[
                  TextSpan(text: 'monoton wachsend ', style: Style.HighlightColor),
                  TextSpan(text: ', wenn jedes Glied grösser oder gleich gross wie dass vorherige Glied ist. Zudem nennen wir eine Folge '),
                  TextSpan(text: 'streng monoton wachsend', style: Style.HighlightColor),
                  TextSpan(text: ', wenn jedes Glied grösser ist, wie das vorherige.'),
                ],
              ),
            ),
            SizedBox(height: BottomSpacing),
            RichText(
              text: TextSpan(
                text: 'Das gleiche gilt auch für fallende Folgen. Diese nennen wir dann ',
                style: Style.FlowingTextFont.merge(
                    TextStyle(color: Theme.of(context).cardColor)),
                children: <TextSpan>[
                  TextSpan(text: '(streng) monoton fallend', style: Style.HighlightColor),
                  TextSpan(text: '.'),
                ],
              ),
            ),
            SizedBox(height: TopSpacing*2),
            Row(
              children: [
                Text('Beschränktheit',
                    style: Style.HomePageTitleFont.merge(
                        TextStyle(color: Theme.of(context).primaryColor))),
              ],
            ),
            const Divider(height: 5, thickness: 1),
            SizedBox(height: TopSpacing),
            RichText(
              text: TextSpan(
                text: 'Weiter können wir eine Folge beschreiben, wenn wir schauen, ob es einen Wert gibt, den die Folge nie überschreitet, bzw. nie darunterfällt. Ist dies der Fall, nennen wir eine Folge entweder ',
                style: Style.FlowingTextFont.merge(
                    TextStyle(color: Theme.of(context).cardColor)),
                children: <TextSpan>[
                  TextSpan(text: 'nach oben oder nach unten beschränkt', style: Style.HighlightColor),
                  TextSpan(text: '.'),
                ],
              ),
            ),
            SizedBox(height: BottomSpacing),
            RichText(
              text: TextSpan(
                text: 'Ist eine Folge sowohl nach unten wie auch nach oben beschränkt, nennen wir diese ',
                style: Style.FlowingTextFont.merge(
                    TextStyle(color: Theme.of(context).cardColor)),
                children: <TextSpan>[
                  TextSpan(text: 'beschränkt', style: Style.HighlightColor),
                  TextSpan(text: '.'),
                ],
              ),
            ),
            SizedBox(height: BottomSpacing,)

          ],
        ),
    );
  }



}
