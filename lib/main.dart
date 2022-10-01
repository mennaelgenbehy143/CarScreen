import 'package:flutter/material.dart';
import 'package:gdsc/Circular.dart';
import 'package:gdsc/MapScreen/mapScreen.dart';
import 'package:gdsc/carScreen.dart';

import 'MyThemeData.dart';



void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: MyThemeData.Themee,
      debugShowCheckedModeBanner: false,
      home: CarScreen(),
    );
  }
}
