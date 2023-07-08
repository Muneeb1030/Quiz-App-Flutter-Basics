import 'package:flutter/material.dart';

class Questions extends StatelessWidget {
  final _questiontext;
  Questions(this._questiontext);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.all(10),
      margin: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
      child: Text(
        _questiontext,
        style: TextStyle(
          fontSize: 20,
          color: Colors.blue.shade500,
        ),
        textAlign: TextAlign.center,
      ),
    );
  }
}
