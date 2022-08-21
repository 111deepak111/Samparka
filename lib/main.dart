import "package:flutter/material.dart";
import "package:english_words/english_words.dart";
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
  @override
  void changeTheme() {
    setState(() {});
  }

  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      theme: ThemeData.dark(),
      title: "Flutter App",
      home: Scaffold(
        drawer: MyDrawer(),
        appBar: AppBar(
          // backgroundColor: Colors.black54,
          title: const Text(
            "Sampada",
            // style: TextStyle(color: Colors.white),
          ),
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
  final _textStyle = const TextStyle(
      color: Colors.white, fontSize: 28, fontFamily: "Times New Roman");
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
