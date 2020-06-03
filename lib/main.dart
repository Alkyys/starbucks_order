import 'package:flutter/material.dart';

import 'package:starbucksorder/screens/home_screen.dart';
import 'package:starbucksorder/screens/loading.dart';
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
