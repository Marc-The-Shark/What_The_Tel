
import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';


class ListRow extends StatefulWidget {

  const ListRow({
    Key key,
    this.pair,
  }) : super(key: key);

  final _biggerFont = const TextStyle(fontSize: 18.0);
  final WordPair pair;


  ListRowState createState() => new ListRowState();
} 

class ListRowState extends State<ListRow> {

  @override 
  build(BuildContext context){
    return Card(
      child: Row(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.all(16.0),
            child: new Container(
            width: 64.0,
            height: 64.0,
            decoration: new BoxDecoration(
                shape: BoxShape.circle,
                image: new DecorationImage(
                fit: BoxFit.fill,
                image: new NetworkImage(
                      "https://i.imgur.com/BoN9kdC.png")
                      )
              )
            ),
          ),
          
          Text(
            widget.pair.asPascalCase,
            style: widget._biggerFont,
          ),
        ]
      ),
    );
  }
}
