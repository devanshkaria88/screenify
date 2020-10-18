import 'package:flutter/material.dart';
import 'mainpage.dart';
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        brightness: Brightness.dark,
        scaffoldBackgroundColor: Colors.black12,
      ),
      debugShowCheckedModeBanner: false,
      home: MainPage(),
    );
  }
}
