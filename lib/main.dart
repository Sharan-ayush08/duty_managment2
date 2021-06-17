import 'package:duty_managment2/providers/my_groups.dart';

import 'package:duty_managment2/screens/view_groups.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => Groups(),
        )
      ],
      child: MaterialApp(
        home: ViewGroupsPage(),
      ),
    );
  }
}
