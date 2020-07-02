import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHomePage(title: 'Dice'),
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
  int a = 3, b = 3;
  _random(int a) {
    var li = [
      'dice1.png',
      'dice2.png',
      'dice3.png',
      'dice4.png',
      'dice5.png',
      'dice6.png'
    ];

    return Image.asset('images/${li[a]}');
  }

  _randomi() {
    setState(() {
      var random = new Random();
      a = random.nextInt(6);
    });
  }

  _randomi1() {
    setState(() {
      var random = new Random();
      b = random.nextInt(6);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: Text('Dicee'),
          backgroundColor: Colors.red,
        ),
        body: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              Expanded(
                child: FlatButton(
                  onPressed: () {
                    _randomi();
                  },
                  child: _random(a),
                ),
              ),
              Expanded(
                child: FlatButton(
                  onPressed: () {
                    _randomi1();
                  },
                  child: _random(b),
                ),
              ),
            ],
          ),
        ));
  }
}
