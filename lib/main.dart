import 'package:flutter/material.dart';

final String titleString = "Date Picker";

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
  DateTime selectedDate;

  Future<Null> _selectedDate(BuildContext context) async {
    final DateTime picked = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime.now().subtract(Duration(days: 30)),
      lastDate: DateTime.now().add(Duration(days: 30)),
    );

    if (picked != null && picked != selectedDate)
      setState(() => selectedDate = picked);
  }

  @override
  Widget build(BuildContext context) => Container(
        padding: EdgeInsets.all(28.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            RaisedButton(
              child: Text("Pick a date"),
              onPressed: () => _selectedDate(context),
            ),
            Text("$selectedDate"),
          ],
        ),
      );
}
