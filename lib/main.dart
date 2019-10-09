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
  TimeOfDay selectedTime;

  Future<Null> _selectedTime(BuildContext context) async {
    final TimeOfDay picked = await showTimePicker(
      context: context,
      initialTime: TimeOfDay.now(),
    );

    if (picked != null && picked != selectedTime)
      setState(() => selectedTime = picked);
  }

  @override
  Widget build(BuildContext context) => Container(
        padding: EdgeInsets.all(28.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            RaisedButton(
              child: Text("Pick a date"),
              onPressed: () => _selectedTime(context),
            ),
            Text("$selectedTime"),
          ],
        ),
      );
}
