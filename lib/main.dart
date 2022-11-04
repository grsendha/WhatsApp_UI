import 'package:flutter/material.dart';
import './screens/home.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'WhatsApp',
      theme: ThemeData(
        primarySwatch:Colors.blue ,
        accentColor: const Color(0xff25D366),
        tabBarTheme: const TabBarTheme(
          labelColor: Colors.white,
        ),
        textTheme: TextTheme(
          headline6: TextStyle(color: Colors.white, fontSize: 16),
          bodyText1: TextStyle(color: Colors.black),
          button: TextStyle(color: Colors.white),
        ),
        bottomAppBarColor: Colors.white,
      ),
      home: Home(),
    );
  }
}
