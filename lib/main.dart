import 'package:flutter/material.dart';
import "./second.dart";

final String titleString = "Time Picker";

void main() => runApp(
      MaterialApp(
        title: titleString,
        home: MyAppLayout(),
        routes: <String, WidgetBuilder>{
          "/a": (BuildContext context) => Second()
        },
      ),
    );

class MyAppLayout extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          title: Text("$titleString Example"),
        ),
        drawer: Drawer(
          child: ListView(
            padding: EdgeInsets.zero,
            children: <Widget>[
              UserAccountsDrawerHeader(
                accountName: Text("Anthony Dugarte"),
                accountEmail: Text("toonny1998@gmail.com"),
                currentAccountPicture: CircleAvatar(
                  backgroundColor: Colors.black,
                  backgroundImage: NetworkImage(
                      "https://studiosol-a.akamaihd.net/uploadfile/letras/fotos/6/1/c/a/61ca1dcbc2cdda2af430927f4fe4b98c.jpg"),
                  // child: Text("AD"),
                ),
                otherAccountsPictures: <Widget>[
                  CircleAvatar(
                    backgroundColor: Colors.blueGrey,
                    child: Text("IG"),
                  ),
                ],
              ),
              ListTile(
                title: Text("Opción 1"),
                onTap: () {
                  Navigator.pop(context);
                  Navigator.pushNamed(context, "/a");
                },
                trailing: Icon(Icons.brightness_2),
              ),
              ListTile(
                title: Text("Op 2"),
                trailing: Icon(Icons.atm),
                onTap: () {},
              ),
              ListTile(
                title: Text("Cerrar"),
                trailing: Icon(Icons.close),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
            ],
          ),
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
        padding: EdgeInsets.all(28),
      );
}
