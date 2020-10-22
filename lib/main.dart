import 'package:flutter/material.dart';
import 'dice.dart';

main() {
  runApp(app());
}

class app extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "My app",
      theme: ThemeData.dark(),
      home: Homepage(),
    );
  }
}
