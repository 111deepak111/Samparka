import 'package:flutter/cupertino.dart';
import "package:flutter/material.dart";
import "package:english_words/english_words.dart";
import 'package:google_fonts/google_fonts.dart';
import 'package:uvce_ga/widgets/appbar.dart';
import 'package:uvce_ga/widgets/drawer.dart';

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
      home: Scaffold(
        drawer: MyDrawer(),
        appBar: MyAppBar("Head",IcoBtn
        //   title: Text(
        //     "Home",
        //     style: TextStyle(
        //       fontFamily: GoogleFonts.notoSans().fontFamily,
        //       fontWeight: FontWeight.w900,
        //     ),
        //     textScaleFactor: 1.15,
        //   ),
        //   actions: [IcoBtn],
        ),
        body: const Center(child: RandomWord()),
      ),
    );
  }
}

class RandomWord extends StatefulWidget {
  const RandomWord({Key? key}) : super(key: key);

  @override
  State<RandomWord> createState() => _RandomWordState();
}

class _RandomWordState extends State<RandomWord> {
  final _suggestions = <WordPair>[];
 @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return ListView.builder(
      padding: const EdgeInsets.all(16.0),
      itemBuilder: (context, i) {
        if (i.isOdd) {
          return const Divider();
        }
        final index = i ~/ 2;
        if (index >= _suggestions.length) {
          _suggestions.addAll(generateWordPairs().take(10));
        }
        return ListTile(
            title: Text(
          _suggestions[index].asPascalCase,
          // style: _textStyle,
        ));
      },
    );
  }
}
