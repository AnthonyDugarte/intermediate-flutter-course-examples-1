import 'package:flutter/material.dart';

final String titleString = "Radio button";

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
  int _value = 0;
  _pickValue(int value) => setState(() => _value = value);

  @override
  Widget build(BuildContext context) => Container(
        padding: EdgeInsets.all(28.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text("Selecciona algo"),
              Divider(
                height: 16,
                color: Colors.amber,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Radio(
                    value: 0,
                    onChanged: _pickValue,
                    activeColor: Colors.amber,
                    groupValue: _value,
                  ),
                  Text("Op 1"),
                  Radio(
                    value: 1,
                    onChanged: _pickValue,
                    activeColor: Colors.amber,
                    groupValue: _value,
                  ),
                  Text("Op 2"),
                  Radio(
                    value: 2,
                    onChanged: _pickValue,
                    activeColor: Colors.amber,
                    groupValue: _value,
                  ),
                  Text("Op 3")
                ],
              )
            ],
          ),
        ),
      );
}
