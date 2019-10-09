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
  bool _value = false;
  _triggerValue(bool value) => setState(() => _value = value);

  @override
  Widget build(BuildContext context) => Container(
        padding: EdgeInsets.all(28.0),
        child: Center(
          child: Column(
            children: <Widget>[
              Text("Quieres este elemento?"),
              Switch(
                value: _value,
                onChanged: _triggerValue,
                activeColor: Colors.blueGrey,
                inactiveTrackColor: Colors.amber,
              ),
              RaisedButton(
                child: Text("Hehe"),
                onPressed: () => debugPrint("$_value"),
              ),
            ],
          ),
        ),
      );
}
