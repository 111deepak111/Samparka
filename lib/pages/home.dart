import 'package:english_words/english_words.dart';
import 'package:flutter/material.dart';
import 'package:uvce_ga/widgets/appbar.dart';

import '../widgets/drawer.dart';

class HomePage extends StatelessWidget{
 final IconButton IcoBtn;
 const HomePage(this.IcoBtn);

  @override
  Widget  build(BuildContext context){
    return Scaffold(
      drawer: MyDrawer(),
      appBar: MyAppBar("Home",IcoBtn),
      body: const Center(child: RandomWord(),),
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
