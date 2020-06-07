import 'package:flutter/material.dart';
import 'package:screenify/Screens/HomeScreens/HomeScreenList.dart';
import 'Screens/HomePage.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
      title: 'Screenify',
      routes: {
        'homescreens' : (context) => ScreensList(ListName: 'Home Screens'),
        'loginscreens' : (context) => ScreensList(ListName: 'Login Screens'),
        'profilescreens' : (context) => ScreensList(ListName: 'Profile Screens'),
        'drawerscreen' : (context) => ScreensList(ListName: 'App Drawers'),
        'bottomsheetsscreen' : (context) => ScreensList(ListName: 'Bottom Sheets'),
      },
    );
  }
}
