import 'package:duty_managment2/screens/view_group_details.dart';
import 'package:duty_managment2/screens/view_groups.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(home: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewGroupsPage();
  }
}
