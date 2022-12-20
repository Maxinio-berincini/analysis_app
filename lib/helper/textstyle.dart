import 'package:flutter/material.dart';
import 'package:flutter_tex/flutter_tex.dart';

// this class is used to create different text styles for the app to make it easier to change the style of the text globally
class Style {
  static const AppBarMainFont = TextStyle(
    fontFamily: 'CenturyGothicSchoolbook',
    fontSize: 29,
    color: Colors.white,
  );

  static final FlowingTextFont = TextStyle(
    fontFamily: 'CenturyGothic',
    fontSize: 18,
    height: 1.2,
    color: Colors.black,
  );

  static const SettingsTitleFont = TextStyle(
    fontFamily: 'CenturyGothicSchoolbook',
    fontSize: 27.0,
    color: Colors.black,
  );

  static const SettingsTextFont = TextStyle(
    fontFamily: 'CenturyGothicSchoolbook',
    fontSize: 24.0,
    color: Colors.white,
  );

  static const SettingsTimeFont = TextStyle(
    fontFamily: 'CenturyGothicSchoolbook',
    fontSize: 16.0,
    color: Colors.black,
  );

  static const TopicTitleFont = TextStyle(
    fontFamily: 'CenturyGothicSchoolbook',
    fontSize: 25.0,
    color: Colors.white,
  );

  static const TopicTileFont = TextStyle(
    fontFamily: 'CenturyGothicSchoolbook',
    fontSize: 20.0,
    color: Colors.white,
  );
  static const TopicSubTileFont = TextStyle(
    fontFamily: 'CenturyGothicSchoolbook',
    fontSize: 18.0,
    color: Colors.white,
  );

  static const HomePageTitleFont = TextStyle(
    fontFamily: 'CenturyGothicSchoolbook',
    fontSize: 25.0,
    color: Colors.black,
  );

  static const ButtonFont = TextStyle(
    fontFamily: 'CenturyGothicSchoolbook',
    fontSize: 25.0,
    color: Colors.white,
  );

  static const LoadingFont = TextStyle(
    fontFamily: 'CenturyGothic',
    fontSize: 16,
    color: Colors.black,
  );

  static const HighlightColor = TextStyle(
    color: Colors.red,
  );

  static  final Equation = TeXViewStyle(
    fontStyle: TeXViewFontStyle(
      fontFamily: 'CenturyGothic',
      fontSize: 23,
    ),

    contentColor: Colors.red
  );
}
