import 'package:flutter/material.dart';

void main() {
  runApp(
    new MaterialApp(
      home: HomePage()
    )
  );
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Column(
        children: <Widget>[
          Icon(Icons.person),
          Text('User'),
          Icon(Icons.person),
        ]
      ),
    );
  }
}