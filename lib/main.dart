import 'package:flutter/cupertino.dart';
import "package:flutter/material.dart";
import 'package:uvce_ga/pages/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  void changeTheme() {
    setState(() {
      if (theme == ThemeData.dark()) {
        theme = ThemeData.light();
        themeIcon = CupertinoIcons.sun_max_fill;
      } else {
        theme = ThemeData.dark();
        themeIcon = CupertinoIcons.moon_circle;
      }
    });
  }

  ThemeData theme = ThemeData.dark();
  IconData themeIcon = CupertinoIcons.moon_circle;

  @override
  Widget build(BuildContext context) {
    final IcoBtn = IconButton(onPressed: changeTheme, icon:Icon(themeIcon));
    // TODO: implement build
    return MaterialApp(
      theme: theme,
      title: "Flutter App",
      home:HomePage(IcoBtn)
    );
  }
}

