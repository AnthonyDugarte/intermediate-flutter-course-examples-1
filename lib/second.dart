import 'package:flutter/material.dart';

class Second extends StatefulWidget {
  @override
  _SecondState createState() => _SecondState();
}

class _SecondState extends State<Second> {
  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          title: Text("Second"),
        ),
        body: Container(
          padding: EdgeInsets.all(
            (28.0),
          ),
          child: Text("Second View"),
        ),
      );
}
