import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';
import  'component/mylist.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final _wordPair = WordPair.random();

    return MaterialApp(
        theme: ThemeData(primaryColor: Colors.purple), home: RandomeWords());
  }
}

class RandomeWords extends StatefulWidget {
  @override
  RandomWordsState createState() {
    return RandomWordsState();
  }
}

class RandomWordsState extends State<RandomeWords> {
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("My Awesome Fultter")),
      body: BuildDynamicList(),
    );
  }
}
