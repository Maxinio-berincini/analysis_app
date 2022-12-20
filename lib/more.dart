import 'package:analysis_app/theme/dark_theme_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:provider/provider.dart';
import 'about.dart';
import 'helper/textstyle.dart';


// This file contains the settings tab of the app
class More extends StatefulWidget {
  const More({Key? key}) : super(key: key);

  @override
  State<More> createState() => _MoreState();
}

class _MoreState extends State<More> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title:
              const FittedBox(child: Text('Mehr', style: Style.AppBarMainFont)),
          backgroundColor: const Color(0xFFA81619),
          leading: IconButton(
            icon: const Icon(Icons.clear_rounded),
            onPressed: () => Navigator.of(context).pop(),
          ),
        ),
        body: Stack(
          children: [
            Padding(
              padding: EdgeInsets.fromLTRB(0, 0, 0, 8),
              child: Align(
                alignment: Alignment.bottomCenter,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.radio_button_checked_rounded,
                      color: Theme.of(context).dividerColor.withOpacity(0.02),
                    ),
                    Icon(
                      Icons.navigate_before_rounded,
                      color: Theme.of(context).dividerColor.withOpacity(0.02),
                    ),
                    Icon(
                      Icons.navigate_next_rounded,
                      color: Theme.of(context).dividerColor.withOpacity(0.02),
                    ),
                    Icon(
                      Icons.fiber_manual_record_rounded,
                      color: Theme.of(context).dividerColor.withOpacity(0.02),
                    ),
                  ],
                ),
              ),
            ),
            const SettingsPageUI(),
          ],
        ));
  }
}

class SettingsPageUI extends StatefulWidget {
  const SettingsPageUI({Key? key}) : super(key: key);

  @override
  State<SettingsPageUI> createState() => _SettingsPageUIState();
}

class _SettingsPageUIState extends State<SettingsPageUI> {
  bool valNotification = true;
  bool valDarkMode = false;

  double CategoryTopSpacing = 3;
  double CategoryBottomSpacing = 40;

  onChangeDarkMode(bool newValue2) {
    setState(() {
      valDarkMode = newValue2;
    });
  }

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.all(16),
      children: [
        const SizedBox(height: 10),
        Row(
          children: [
            Text('Infos',
                style: Style.SettingsTitleFont.merge(
                    TextStyle(color: Theme.of(context).primaryColor))),
          ],
        ),
        const Divider(height: 5, thickness: 1),
        SizedBox(height: CategoryTopSpacing),
        buildSettingsOption(context, 'Über', About()),
        SizedBox(height: CategoryBottomSpacing),
        Row(
          children: [
            Text('Einstellungen',
                style: Style.SettingsTitleFont.merge(
                    TextStyle(color: Theme.of(context).primaryColor))),
          ],
        ),
        const Divider(height: 5, thickness: 1),
        SizedBox(height: CategoryTopSpacing),
        buildDarkModeOption('Dark Mode', valDarkMode, onChangeDarkMode),
        SizedBox(height: CategoryBottomSpacing),
      ],
    );
  }

  Padding buildDarkModeOption(
      String title, bool value, Function onChangeMethod) {
    final themeChange = Provider.of<DarkThemeProvider>(context);
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 0),
      child: Container(
        height: 60,
        padding: const EdgeInsets.fromLTRB(16, 0, 16, 0),
        margin: const EdgeInsets.fromLTRB(0, 0, 0, 0),
        decoration: BoxDecoration(
          color: const Color(0xFFA81619),
          shape: BoxShape.rectangle,
          borderRadius: BorderRadius.circular(8.0),
          boxShadow: const <BoxShadow>[
            BoxShadow(
              color: Colors.black12,
              blurRadius: 5.0,
              offset: Offset(0.0, 5.0),
            ),
          ],
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Align(
              alignment: const FractionalOffset(0.5, 0.5),
              child: Text(title, style: Style.SettingsTextFont),
            ),
            Transform.scale(
              scale: 0.7,
              child: CupertinoSwitch(
                activeColor: const Color(0xFF252525),
                thumbColor: Theme.of(context).dividerColor,
                trackColor: Colors.white,
                value: themeChange.darkTheme,
                onChanged: (bool newValue) {
                  themeChange.darkTheme = newValue;
                },
              ),
            ),
          ],
        ),
      ),
    );
  }

  GestureDetector buildSettingsOption(
      BuildContext context, String title, final nextPage) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context)
            .push(MaterialPageRoute(builder: (BuildContext context) {
          return Scaffold(
            body: nextPage,
          );
        }));
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 0),
        child: Container(
          height: 60,
          padding: const EdgeInsets.fromLTRB(16, 0, 16, 0),
          margin: const EdgeInsets.fromLTRB(0, 0, 0, 0),
          decoration: BoxDecoration(
            color: const Color(0xFFA81619),
            shape: BoxShape.rectangle,
            borderRadius: BorderRadius.circular(8.0),
            boxShadow: const <BoxShadow>[
              BoxShadow(
                color: Colors.black12,
                blurRadius: 5.0,
                offset: Offset(0.0, 5.0),
              ),
            ],
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Align(
                alignment: const FractionalOffset(0.5, 0.5),
                child: Text(title,
                    textAlign: TextAlign.center, style: Style.SettingsTextFont),
              ),
              const Icon(Icons.arrow_forward_ios, color: Colors.white),
            ],
          ),
        ),
      ),
    );
  }
}
