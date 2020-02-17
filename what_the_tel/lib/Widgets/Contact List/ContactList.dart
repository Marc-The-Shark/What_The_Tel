
import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';
import 'ListRow.dart';

class ContactList extends StatefulWidget {
  @override
  RandomWordsState createState() => RandomWordsState();
}

class RandomWordsState extends State<ContactList> {

  final _suggestions = <WordPair>[];
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Contact List'),
      ),
      body: _buildSuggestions(),
    );
  }

  Widget _buildRow(WordPair pair) {
    return ListRow(pair: pair);
  }

    Widget _buildSuggestions() {
    return ListView.builder(
        itemBuilder: /*1*/ (context, i) {
          final index = i ~/ 2; /*3*/
          if (index >= _suggestions.length) {
            _suggestions.addAll(generateWordPairs().take(10)); /*4*/
          }
          return _buildRow(_suggestions[index]);
        });
  }
}