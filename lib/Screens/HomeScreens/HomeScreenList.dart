import 'package:flutter/material.dart';
import 'package:screenify/widgets/ScreenListCard.dart';
import 'package:screenify/Screens/DummyPage.dart';

import 'fitnessappdark/fitnessappdark.dart';
import 'fitnessapp/fitnessapp.dart';


class ScreensList extends StatelessWidget {
  String ListName;
  ScreensList({@required this.ListName});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          SingleChildScrollView(
            physics: BouncingScrollPhysics(),
            child: Column(
              children: [
                SizedBox(
                  height: 50.0,
                ),
                Center(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 20.0),
                    child: Text(
                      ListName,
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 25.0,
                          fontWeight: FontWeight.bold,),
                    ),
                  ),
                ),
                ScreenListCard(LeftPage: FitnessApp(), RightPage: FitnessAppDark(), LeftPageName: 'Huawei style Fitness App', RightPageName: 'Huawei style Fitness App (Dark)', leftscreenprev: AssetImage('assets/images/homescreens/fitnessapp/title.jpeg'),rightscreenprev: AssetImage('assets/images/homescreens/fitnessapp/titledark.jpeg'),),
                ScreenListCard(LeftPage: LeftPage(), RightPage: RightPage(), LeftPageName: 'Left Page', RightPageName: 'Right Page', leftscreenprev: AssetImage('assets/images/homescreens/fitnessapp/title.jpeg'),rightscreenprev: AssetImage('assets/images/homescreens/fitnessapp/title.jpeg'),),
                ScreenListCard(LeftPage: LeftPage(), RightPage: RightPage(), LeftPageName: 'Left Page', RightPageName: 'Right Page', leftscreenprev: AssetImage('assets/images/homescreens/fitnessapp/title.jpeg'),rightscreenprev: AssetImage('assets/images/homescreens/fitnessapp/title.jpeg'),),
                ScreenListCard(LeftPage: LeftPage(), RightPage: RightPage(), LeftPageName: 'Left Page', RightPageName: 'Right Page', leftscreenprev: AssetImage('assets/images/homescreens/fitnessapp/title.jpeg'),rightscreenprev: AssetImage('assets/images/homescreens/fitnessapp/title.jpeg'),),
                ScreenListCard(LeftPage: LeftPage(), RightPage: RightPage(), LeftPageName: 'Left Page', RightPageName: 'Right Page', leftscreenprev: AssetImage('assets/images/homescreens/fitnessapp/title.jpeg'),rightscreenprev: AssetImage('assets/images/homescreens/fitnessapp/title.jpeg'),),
                ScreenListCard(LeftPage: LeftPage(), RightPage: RightPage(), LeftPageName: 'Left Page', RightPageName: 'Right Page', leftscreenprev: AssetImage('assets/images/homescreens/fitnessapp/title.jpeg'),rightscreenprev: AssetImage('assets/images/homescreens/fitnessapp/title.jpeg'),),
                ScreenListCard(LeftPage: LeftPage(), RightPage: RightPage(), LeftPageName: 'Left Page', RightPageName: 'Right Page', leftscreenprev: AssetImage('assets/images/homescreens/fitnessapp/title.jpeg'),rightscreenprev: AssetImage('assets/images/homescreens/fitnessapp/title.jpeg'),),
              ],
            ),
          ),
          Positioned(
            top: 60,
            left: 10,
            child: IconButton(
                icon: Icon(Icons.arrow_back_ios),
                onPressed: () {
                  Navigator.pop(context);
                }),
          )
        ],
      ),
    );
  }
}
