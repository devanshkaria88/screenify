import 'package:flutter/material.dart';
import 'package:screenify/Screens/BottomSheetScreens/bottomsheet_screenlist.dart';
import 'package:screenify/Screens/ProfileScreens/profilecreenslist.dart';
import 'Screens/HomePage.dart';
import 'Screens/HomeScreens/homescreenslist.dart';
import 'Screens/LoginScreens/loginscreenslist.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
      title: 'Screenify',
      routes: {
        'homescreens' : (context) => HomeScreensList(ListName: 'Home Screens'),
        'loginscreens' : (context) => LoginScreensList(ListName: 'Login Screens'),
        'profilescreens' : (context) => ProfileScreensList(ListName: 'Profile Screens'),
        'drawerscreen' : (context) => HomeScreensList(ListName: 'App Drawers'),
        'bottomsheetsscreen' : (context) => BottomSheetScreenList(ListName: 'Bottom Sheets'),
      },
    );
  }
}
