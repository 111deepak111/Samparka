import 'package:Samparka/routes.dart';
import 'package:flutter/cupertino.dart';
import "package:flutter/material.dart";


final themeGlobalKey = new GlobalKey<_MyAppState>();

void main() {
  runApp(MyApp(key: themeGlobalKey,));
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);
  static ThemeData theme = ThemeData.dark();
  static IconData themeIcon = CupertinoIcons.moon_circle;
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  void changeTheme(){
    setState(() {
      if (MyApp.theme == ThemeData.dark()){
        MyApp.theme = ThemeData.light();
        MyApp.themeIcon = CupertinoIcons.sun_max;
      }else{
        MyApp.theme = ThemeData.dark();
        MyApp.themeIcon = CupertinoIcons.moon_circle;
      }
    });
  }
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
     initialRoute: "/marvel",
      onGenerateRoute: RouteGenerator.generateRoute,
      theme: MyApp.theme,
    );
  }
}

