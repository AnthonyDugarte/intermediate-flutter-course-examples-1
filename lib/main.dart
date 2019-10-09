import 'package:flutter/material.dart';

final String titleString = "Switch";

void main() => runApp(MaterialApp(
      title: titleString,
      home: MyAppLayout(),
    ));

class MyAppLayout extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          title: Text("$titleString Example"),
        ),
        body: MyApp(),
      );
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) => Container(
        padding: EdgeInsets.all(28.0),
        child: Column(
          children: <Widget>[
            Text("Quieres este elemento?"),
          ],
        ),
      );
}
