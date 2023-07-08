import 'package:flutter/material.dart';

class Answers extends StatelessWidget {
  final VoidCallback _selecthandler;
  final String _answertext;

  Answers(this._answertext, this._selecthandler);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.all(10),
      margin: EdgeInsets.all(10),
      child: ElevatedButton(
        onPressed: _selecthandler,
        child: Text(
          _answertext,
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        style: ElevatedButton.styleFrom(
            foregroundColor: Colors.blue.shade800,
            backgroundColor: Colors.blue.shade300),
      ),
    );
  }
}
