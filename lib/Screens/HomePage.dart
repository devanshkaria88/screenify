import 'package:flutter/material.dart';
import 'package:screenify/widgets/HomePageCards.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Column(
            children: [
              SizedBox(
                height: 50.0,
              ),
              GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, 'loginscreens');
                },
                child: HomePageCard(
                  childImage: AssetImage('assets/images/home.jpg'),
                  CardTitle: 'Login Screens',
                ),
              ),
              GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, 'homescreens');
                  },
                  child: HomePageCard(
                    childImage: AssetImage('assets/images/home.jpg'),
                    CardTitle: 'Home Pages',
                  )),
              GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, 'profilescreens');
                },
                child: HomePageCard(
                  childImage: AssetImage('assets/images/home.jpg'),
                  CardTitle: 'Profile Screens',
                ),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, 'drawerscreen');
                },
                child: HomePageCard(
                  childImage: AssetImage('assets/images/home.jpg'),
                  CardTitle: 'Drawers',
                ),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, 'bottomsheetsscreen');
                },
                child: HomePageCard(
                  childImage: AssetImage('assets/images/home.jpg'),
                  CardTitle: 'BottomSheets',
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
