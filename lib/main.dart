import 'package:flutter/material.dart';

import 'package:starbucksorder/screens/home_screen.dart';
import 'package:starbucksorder/screens/input_number.dart';
import 'package:starbucksorder/screens/loading.dart';
import 'package:starbucksorder/screens/scan.dart';
import 'contantes.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        '/': (context) => Loading(),
        '/home': (context) => HomeScreen(),
        '/scan': (context) => Scan(),
        '/inputNumber': (context) => InputNumber(),
      },
      debugShowCheckedModeBanner: false,
      title: 'Starbucks App',
      theme: ThemeData(
        primaryColor: kPrimaryColor,
        scaffoldBackgroundColor: kBackgroundColor,
        textTheme: Theme.of(context).textTheme.apply(displayColor: kTextColor),
      )
    );
  }
}
