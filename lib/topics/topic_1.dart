import 'package:flutter/material.dart';

import '../helper/textstyle.dart';

class Topic_1 extends StatefulWidget {
  const Topic_1({Key? key}) : super(key: key);

  @override
  State<Topic_1> createState() => _Topic_1State();
}

class _Topic_1State extends State<Topic_1> {
  @override
  Widget build(BuildContext context) {
    final isDarkMode = Theme.of(context).canvasColor != Colors.white;
    return Scaffold(
        appBar: AppBar(
          title: const FittedBox(
              child: Text('Thema 1', style: Style.AppBarMainFont)),
          backgroundColor: const Color(0xFFA81619),
          leading: IconButton(
            icon: const Icon(Icons.clear_rounded),
            onPressed: () => Navigator.of(context).pop(),
          ),
        ),
        body:  Text('topic 1 this is', style: Style.FlowingTextFont.merge(
    TextStyle(color: Theme.of(context).cardColor))));
  }
}
