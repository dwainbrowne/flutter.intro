import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';

Widget BuildDynamicList() {
  final _wordList = <WordPair>[];
  

  return ListView.builder(
      padding: const EdgeInsets.all(5),
      itemBuilder: (context, item) {

        //If list is odd, return a divider
        if (item.isOdd) {
          return Divider();
        }

        //Get the current index
        final index = item ~/ 2;

        //Generate new words if we're at the bottom
        if (index >= _wordList.length) {
          _wordList.addAll(generateWordPairs().take(10));
        }

        return _buildRow(_wordList[index]);
      });
}

//Word pair row
Widget _buildRow(WordPair word) {
  return ListTile(title: Text(word.asPascalCase,
                style: TextStyle(fontSize: 16),));
}
