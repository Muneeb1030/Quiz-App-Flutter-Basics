import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

import './Home.dart';

class Loading extends StatefulWidget {
  const Loading({super.key});

  @override
  State<Loading> createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {
  @override
  void initState() {
    super.initState();
    Timer(
      Duration(seconds: 1),
      () {
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) => Home(),
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(0),
        child: AppBar(
          backgroundColor: Colors.blue.shade500,
        ),
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            SizedBox(
              height: 200,
            ),
            Image.asset(
              'img/quizlogo.png',
              width: 240,
              height: 240,
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              "Quiz Strom",
              style: TextStyle(
                fontSize: 50,
                color: Colors.white,
              ),
            ),
            SizedBox(
              height: 30,
            ),
            SpinKitDualRing(
              size: 70,
              color: Colors.white,
            ),
            Expanded(
              child: Align(
                child: Text(
                  "Author: Muneeb",
                  style: TextStyle(fontSize: 24, color: Colors.white70),
                ),
                alignment: Alignment.bottomCenter,
              ),
            ),
            SizedBox(
              height: 30,
            ),
          ],
        ),
      ),
      backgroundColor: Colors.blue.shade300,
    );
  }
}
