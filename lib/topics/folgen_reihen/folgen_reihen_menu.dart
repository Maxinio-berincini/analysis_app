import 'package:analysis_app/topics/folgen_reihen/Folgen/Divergenz/div_def.dart';
import 'package:analysis_app/topics/folgen_reihen/Folgen/Konvergenz/konv_criteria.dart';
import 'package:analysis_app/topics/folgen_reihen/Folgen/Konvergenz/konv_def.dart';
import 'package:analysis_app/topics/folgen_reihen/Folgen/Konvergenz/konv_rules.dart';
import 'package:analysis_app/topics/folgen_reihen/Folgen/heronsche_folge.dart';
import 'package:analysis_app/topics/folgen_reihen/Folgen/monoton_bechraenkt.dart';
import 'package:analysis_app/topics/folgen_reihen/Folgen/what_is.dart';
import 'package:analysis_app/topics/folgen_reihen/Reihen/geomatrical.dart';
import 'package:analysis_app/topics/folgen_reihen/Reihen/geomatrical_konv_div.dart';
import 'package:analysis_app/topics/folgen_reihen/Reihen/konv_div.dart';
import 'package:analysis_app/topics/folgen_reihen/Reihen/majorant.dart';
import 'package:analysis_app/topics/folgen_reihen/Reihen/minorant.dart';
import 'package:analysis_app/topics/folgen_reihen/Reihen/quotient.dart';
import 'package:analysis_app/topics/folgen_reihen/Reihen/rules.dart';
import 'package:analysis_app/topics/folgen_reihen/Reihen/what_is.dart';
import 'package:flutter/material.dart';

import '../../helper/textstyle.dart';

// This file is the menu for the topic "Folgen und Reihen"
// it displays a column with scrollable tiles that send the user to the subtopics

class Folgen_Reihen_Main extends StatefulWidget {
  const Folgen_Reihen_Main({Key? key}) : super(key: key);

  @override
  State<Folgen_Reihen_Main> createState() => _Folgen_Reihen_MainState();
}

class _Folgen_Reihen_MainState extends State<Folgen_Reihen_Main> {
  @override
  Widget build(BuildContext context) {
    final isDarkMode = Theme.of(context).canvasColor != Colors.white;
    return Scaffold(
      appBar: AppBar(
        title: const FittedBox(
            child: Text('Folgen & Reihen', style: Style.AppBarMainFont)),
        backgroundColor: const Color(0xFFA81619),
        leading: IconButton(
          icon: const Icon(Icons.clear_rounded),
          onPressed: () => Navigator.of(context).pop(),
        ),
      ),
      body: topicmenu(),
    );
  }
}

class topicmenu extends StatefulWidget {
  const topicmenu({Key? key}) : super(key: key);

  @override
  State<topicmenu> createState() => _topicmenuState();
}

class _topicmenuState extends State<topicmenu> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.all(16),
      children: <Widget>[
        const SizedBox(height: 0),
        Text('Folgen',
            style: Style.SettingsTitleFont.merge(
                TextStyle(color: Theme.of(context).primaryColor))),
        const Divider(height: 5, thickness: 1),
        const SizedBox(height: 10),
        Theme(
          data: Theme.of(context).copyWith(dividerColor: Colors.transparent),
          child: Column(
            children: [
              GestureDetector(
                onTap: () {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (BuildContext context) {
                    return Scaffold(
                      body: WhatIsSequence(),
                    );
                  }));
                },
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 0, horizontal: 0),
                  child: Container(
                    height: 55,
                    padding: const EdgeInsets.fromLTRB(16, 0, 16, 0),
                    margin: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                    decoration: BoxDecoration(
                      color: const Color(0xFFA81619),
                      shape: BoxShape.rectangle,
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Align(
                          alignment: const FractionalOffset(0.5, 0.5),
                          child: FittedBox(
                            child: Text('Was ist eine Folge',
                                textAlign: TextAlign.center,
                                style: Style.TopicTileFont),
                          ),
                        ),
                        Icon(
                          Icons.navigate_next_rounded,
                          color: const Color(0xFF252525),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 10),
              GestureDetector(
                onTap: () {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (BuildContext context) {
                    return Scaffold(
                      body: MonotonBeschraenkt(),
                    );
                  }));
                },
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 0, horizontal: 0),
                  child: Container(
                    height: 55,
                    padding: const EdgeInsets.fromLTRB(16, 0, 16, 0),
                    margin: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                    decoration: BoxDecoration(
                      color: const Color(0xFFA81619),
                      shape: BoxShape.rectangle,
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Align(
                          alignment: const FractionalOffset(0.5, 0.5),
                          child: FittedBox(
                            child: Text('Monoton & Beschränkt',
                                textAlign: TextAlign.center,
                                style: Style.TopicTileFont),
                          ),
                        ),
                        Icon(
                          Icons.navigate_next_rounded,
                          color: const Color(0xFF252525),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 10),
              ClipRRect(
                borderRadius: BorderRadius.circular(8.0),
                child: ExpansionTile(
                  title: const FittedBox(
                    fit: BoxFit.none,
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'Konvergenz         ',
                      style: Style.TopicTileFont,
                    ),
                  ),
                  collapsedBackgroundColor: Color(0xFFA81619),
                  backgroundColor: Color(0xFFA81619),
                  collapsedIconColor: const Color(0xFF252525),
                  iconColor: const Color(0xFF252525),
                  children: [
                    ListTile(
                      title:
                      Text('Definition', style: Style.TopicSubTileFont),
                      trailing: Icon(
                        Icons.navigate_next_rounded,
                        color: const Color(0xFF252525),
                      ),
                      onTap: () {
                        Navigator.of(context).push(
                            MaterialPageRoute(builder: (BuildContext context) {
                              return Scaffold(
                                body: KonvDef(),
                              );
                            }));
                      },
                    ),
                    ListTile(
                      title:
                          Text('Rechenregeln', style: Style.TopicSubTileFont),
                      trailing: Icon(
                        Icons.navigate_next_rounded,
                        color: const Color(0xFF252525),
                      ),
                      onTap: () {
                        Navigator.of(context).push(
                            MaterialPageRoute(builder: (BuildContext context) {
                          return Scaffold(
                            body: KonvRules(),
                          );
                        }));
                      },
                    ),
                    ListTile(
                      title: Text('Kriterien', style: Style.TopicSubTileFont),
                      trailing: Icon(
                        Icons.navigate_next_rounded,
                        color: const Color(0xFF252525),
                      ),
                      onTap: () {
                        Navigator.of(context).push(
                            MaterialPageRoute(builder: (BuildContext context) {
                          return Scaffold(
                            body: KonvCriteria(),
                          );
                        }));
                      },
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 10),
              GestureDetector(
                onTap: () {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (BuildContext context) {
                    return Scaffold(
                      body: DivBestimmtDiv(),
                    );
                  }));
                },
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 0, horizontal: 0),
                  child: Container(
                    height: 55,
                    padding: const EdgeInsets.fromLTRB(16, 0, 16, 0),
                    margin: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                    decoration: BoxDecoration(
                      color: const Color(0xFFA81619),
                      shape: BoxShape.rectangle,
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Align(
                          alignment: const FractionalOffset(0.5, 0.5),
                          child: FittedBox(
                            child: Text('Divergenz',
                                textAlign: TextAlign.center,
                                style: Style.TopicTileFont),
                          ),
                        ),
                        Icon(
                          Icons.navigate_next_rounded,
                          color: const Color(0xFF252525),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 10),
              GestureDetector(
                onTap: () {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (BuildContext context) {
                    return Scaffold(
                      body: HeronFolge(),
                    );
                  }));
                },
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 0, horizontal: 0),
                  child: Container(
                    height: 55,
                    padding: const EdgeInsets.fromLTRB(16, 0, 16, 0),
                    margin: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                    decoration: BoxDecoration(
                      color: const Color(0xFFA81619),
                      shape: BoxShape.rectangle,
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Align(
                          alignment: const FractionalOffset(0.5, 0.5),
                          child: FittedBox(
                            child: Text('Heronsche Folge',
                                textAlign: TextAlign.center,
                                style: Style.TopicTileFont),
                          ),
                        ),
                        Icon(
                          Icons.navigate_next_rounded,
                          color: const Color(0xFF252525),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 10),
            ],
          ),
        ),
        const SizedBox(height: 10),
        Text('Reihen',
            style: Style.SettingsTitleFont.merge(
                TextStyle(color: Theme.of(context).primaryColor))),
        const Divider(height: 5, thickness: 1),
        const SizedBox(height: 10),
        Theme(
          data: Theme.of(context).copyWith(dividerColor: Colors.transparent),
          child: Column(
            children: [
              GestureDetector(
                onTap: () {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (BuildContext context) {
                    return Scaffold(
                      body: WhatIsRow(),
                    );
                  }));
                },
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 0, horizontal: 0),
                  child: Container(
                    height: 55,
                    padding: const EdgeInsets.fromLTRB(16, 0, 16, 0),
                    margin: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                    decoration: BoxDecoration(
                      color: const Color(0xFFA81619),
                      shape: BoxShape.rectangle,
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Align(
                          alignment: const FractionalOffset(0.5, 0.5),
                          child: FittedBox(
                            child: Text('Was ist eine Reihe',
                                textAlign: TextAlign.center,
                                style: Style.TopicTileFont),
                          ),
                        ),
                        Icon(
                          Icons.navigate_next_rounded,
                          color: const Color(0xFF252525),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 10),
              GestureDetector(
                onTap: () {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (BuildContext context) {
                    return Scaffold(
                      body: KonDiv(),
                    );
                  }));
                },
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 0, horizontal: 0),
                  child: Container(
                    height: 55,
                    padding: const EdgeInsets.fromLTRB(16, 0, 16, 0),
                    margin: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                    decoration: BoxDecoration(
                      color: const Color(0xFFA81619),
                      shape: BoxShape.rectangle,
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Align(
                          alignment: const FractionalOffset(0.5, 0.5),
                          child: FittedBox(
                            child: Text('Konvergenz & Divergenz',
                                textAlign: TextAlign.center,
                                style: Style.TopicTileFont),
                          ),
                        ),
                        Icon(
                          Icons.navigate_next_rounded,
                          color: const Color(0xFF252525),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 10),
              GestureDetector(
                onTap: () {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (BuildContext context) {
                    return Scaffold(
                      body: RulesRow(),
                    );
                  }));
                },
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 0, horizontal: 0),
                  child: Container(
                    height: 55,
                    padding: const EdgeInsets.fromLTRB(16, 0, 16, 0),
                    margin: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                    decoration: BoxDecoration(
                      color: const Color(0xFFA81619),
                      shape: BoxShape.rectangle,
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Align(
                          alignment: const FractionalOffset(0.5, 0.5),
                          child: FittedBox(
                            child: Text('Rechenregeln',
                                textAlign: TextAlign.center,
                                style: Style.TopicTileFont),
                          ),
                        ),
                        Icon(
                          Icons.navigate_next_rounded,
                          color: const Color(0xFF252525),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 10),
              ClipRRect(
                borderRadius: BorderRadius.circular(8.0),
                child: ExpansionTile(
                  title: const FittedBox(
                    fit: BoxFit.none,
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'geometrische Reihen',
                      style: Style.TopicTileFont,
                    ),
                  ),
                  collapsedBackgroundColor: Color(0xFFA81619),
                  backgroundColor: Color(0xFFA81619),
                  collapsedIconColor: const Color(0xFF252525),
                  iconColor: const Color(0xFF252525),
                  children: [
                    ListTile(
                      title: Text('Definition',
                          style: Style.TopicSubTileFont),
                      trailing: Icon(
                        Icons.navigate_next_rounded,
                        color: const Color(0xFF252525),
                      ),
                      onTap: () {
                        Navigator.of(context).push(
                            MaterialPageRoute(builder: (BuildContext context) {
                          return Scaffold(
                            body: Geomatrical(),
                          );
                        }));
                      },
                    ),
                    ListTile(
                      title: Text('Konvergenz & Divergenz',
                          style: Style.TopicSubTileFont),
                      trailing: Icon(
                        Icons.navigate_next_rounded,
                        color: const Color(0xFF252525),
                      ),
                      onTap: () {
                        Navigator.of(context).push(
                            MaterialPageRoute(builder: (BuildContext context) {
                          return Scaffold(
                            body: GeomatricalKonvDiv(),
                          );
                        }));
                      },
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 10),
              GestureDetector(
                onTap: () {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (BuildContext context) {
                    return Scaffold(
                      body: Majorante(),
                    );
                  }));
                },
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 0, horizontal: 0),
                  child: Container(
                    height: 55,
                    padding: const EdgeInsets.fromLTRB(16, 0, 16, 0),
                    margin: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                    decoration: BoxDecoration(
                      color: const Color(0xFFA81619),
                      shape: BoxShape.rectangle,
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Align(
                          alignment: const FractionalOffset(0.5, 0.5),
                          child: FittedBox(
                            child: Text('Majorantenkriterium',
                                textAlign: TextAlign.center,
                                style: Style.TopicTileFont),
                          ),
                        ),
                        Icon(
                          Icons.navigate_next_rounded,
                          color: const Color(0xFF252525),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 10),
              GestureDetector(
                onTap: () {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (BuildContext context) {
                    return Scaffold(
                      body: Minorante(),
                    );
                  }));
                },
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 0, horizontal: 0),
                  child: Container(
                    height: 55,
                    padding: const EdgeInsets.fromLTRB(16, 0, 16, 0),
                    margin: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                    decoration: BoxDecoration(
                      color: const Color(0xFFA81619),
                      shape: BoxShape.rectangle,
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Align(
                          alignment: const FractionalOffset(0.5, 0.5),
                          child: FittedBox(
                            child: Text('Minorantenkriterium',
                                textAlign: TextAlign.center,
                                style: Style.TopicTileFont),
                          ),
                        ),
                        Icon(
                          Icons.navigate_next_rounded,
                          color: const Color(0xFF252525),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 10),
              GestureDetector(
                onTap: () {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (BuildContext context) {
                    return Scaffold(
                      body: Quotient(),
                    );
                  }));
                },
                child: Padding(
                  padding:
                  const EdgeInsets.symmetric(vertical: 0, horizontal: 0),
                  child: Container(
                    height: 55,
                    padding: const EdgeInsets.fromLTRB(16, 0, 16, 0),
                    margin: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                    decoration: BoxDecoration(
                      color: const Color(0xFFA81619),
                      shape: BoxShape.rectangle,
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Align(
                          alignment: const FractionalOffset(0.5, 0.5),
                          child: FittedBox(
                            child: Text('Quotientenkriterium',
                                textAlign: TextAlign.center,
                                style: Style.TopicTileFont),
                          ),
                        ),
                        Icon(
                          Icons.navigate_next_rounded,
                          color: const Color(0xFF252525),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 10),
            ],
          ),
        ),
      ],
    );
  }
}
