import 'dart:ui';

import 'package:flutter/material.dart';

import './scores.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Mobil Score Board',
      theme: ThemeData(
        primarySwatch: Colors.cyan,
        accentColor: Colors.teal,
      ),
      home: MyHomePage(title: 'Mobile Score Keeper'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(widget.title,
            style: TextStyle(
              color: Colors.white,
            )),
      ),
      body: Column(
        children: [
          SizedBox(
            height: 20,
          ),
          Card(
            color: Colors.cyan,
            elevation: 8,
            child: Container(
              width: 340,
              height: 30,
              child: Center(
                child: Text(
                  'GAME SCORES',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 40,
          ),
          PlayerScores(),
        ],
      ),
    );
  }
}
