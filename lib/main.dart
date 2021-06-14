import 'dart:ffi';

// ignore: unused_import
import 'package:duty_managment2/pages/dialog.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final _textFieldController = TextEditingController();
  final GlobalKey _key = GlobalKey();
  // ignore: deprecated_member_use

  @override
  void dispose() {
    _textFieldController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      themeMode: ThemeMode.light,
      home: Scaffold(
        appBar: AppBar(),
        body: SingleChildScrollView(
          child: Container(
            child: Column(
              children: <Widget>[
                Center(
                  child: Padding(
                    padding: const EdgeInsets.only(top: 30.0),
                    child: Text(
                      "GROUP MANAGMENT PAGE",
                      style: TextStyle(color: Colors.deepPurple, fontSize: 20),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 450.0),
                  // ignore: deprecated_member_use
                  child: Builder(
                    builder: (context) {
                      // ignore: deprecated_member_use
                      return RaisedButton(
                        child: Text("Click to add Groups"),
                        onPressed: () {
                          _showInformationDialog(context);
                        },
                      );
                    },
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  _showInformationDialog(BuildContext context) {
    return showDialog(
        context: context,
        builder: (context) {
          return Dialog(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            ),
            elevation: 16,
            child: Container(
              height: 360.0,
              width: 400.0,
              child: ListView(
                children: <Widget>[
                  SizedBox(
                    height: 24,
                  ),
                  Center(
                    child: Text(
                      "GROUP DETAILS",
                      style: TextStyle(
                          fontSize: 24,
                          color: Colors.blueGrey[800],
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  dialog(),
                ],
              ),
            ),
          );
        });
  }
}
