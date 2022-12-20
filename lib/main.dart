import 'package:analysis_app/theme/dark_theme_provider.dart';
import 'package:analysis_app/theme/dark_theme_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';
import 'home.dart';

// The main file is the entry point of the application and is the first file to be executed.


// Initialize App
Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations(
      [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  DarkThemeProvider themeChangeProvider = DarkThemeProvider();

  @override
  // initState is called once at the beginning of the app
  void initState() {
    super.initState();
    getCurrentAppTheme(); // gets the current theme of the app
  }

  // syncs the current theme of the app with the theme of the device
  void getCurrentAppTheme() async {
    themeChangeProvider.darkTheme =
        await themeChangeProvider.darkThemePreference.getTheme();
  }

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) {
        return themeChangeProvider;
      },
      child: Consumer<DarkThemeProvider>(
        builder: (BuildContext context, value, Widget) {
          return MaterialApp(
            debugShowCheckedModeBanner: false,
            theme: Styles.themeData(themeChangeProvider.darkTheme, context),
            home: home(), // reroutes to home.dart
          );
        },
      ),
    );
  }
}
