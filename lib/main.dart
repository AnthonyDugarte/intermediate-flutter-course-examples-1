import 'package:flutter/material.dart';

final String titleString = "Time Picker";

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
  double _val = 0.0;

  void _setVal(double val) => setState(() => _val = val);

  @override
  Widget build(BuildContext context) => Container(
        padding: EdgeInsets.all(28),
        child: Center(
          child: Column(
            children: <Widget>[
              Slider(
                value: _val,
                onChanged: _setVal,
              ),
              Text("${(_val * 100).round()}"),
            ],
          ),
        ),
      );
}
