import 'package:flutter/material.dart';
import 'dart:math';

class Homepage extends StatefulWidget {
  @override
  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  AssetImage one = AssetImage("images/one.png");
  AssetImage two = AssetImage("images/two.png");
  AssetImage three = AssetImage("images/three.png");
  AssetImage four = AssetImage("images/four.png");
  AssetImage five = AssetImage("images/five.png");
  AssetImage six = AssetImage("images/six.png");
  AssetImage diceimage;
  AssetImage diceimage1;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    setState(() {
      diceimage = one;
      diceimage1 = one;
    });
  }

  void diceroller() {
    int random = (1 + Random().nextInt(6));
    int random1 = (1 + Random().nextInt(6));
    AssetImage newimage;
    AssetImage newimage1;
    switch (random) {
      case 1:
        newimage = one;
        break;
      case 2:
        newimage = two;
        break;
      case 3:
        newimage = three;
        break;
      case 4:
        newimage = four;
        break;
      case 5:
        newimage = five;
        break;
      case 6:
        newimage = six;
        break;
    }
    switch (random1) {
      case 1:
        newimage1 = one;
        break;
      case 2:
        newimage1 = two;
        break;
      case 3:
        newimage1 = three;
        break;
      case 4:
        newimage1 = four;
        break;
      case 5:
        newimage1 = five;
        break;
      case 6:
        newimage1 = six;
        break;
    }

    setState(() {
      diceimage = newimage;
    });
    setState(() {
      diceimage1 = newimage1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Dice Roller"),
        backgroundColor: Colors.amberAccent,
      ),
      body: Container(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Image(
                    image: diceimage,
                    width: 100.0,
                    height: 100.0,
                  ),
                  Image(
                    image: diceimage1,
                    width: 100.0,
                    height: 100.0,
                  ),
                ],
              ),
              Container(
                margin: EdgeInsets.all(10.0),
                child: RaisedButton(
                  child: Text("roll the dice"),
                  onPressed: diceroller,
                  padding: EdgeInsets.all(10.0),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
