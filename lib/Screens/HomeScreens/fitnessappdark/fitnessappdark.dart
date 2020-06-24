import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';
import 'fitnessappdarkcard.dart';

class FitnessAppDark extends StatefulWidget {
  @override
  _FitnessAppDarkState createState() => _FitnessAppDarkState();
}

class _FitnessAppDarkState extends State<FitnessAppDark> {
  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        elevation: 0.0,
        backgroundColor: Colors.black,
        title: Text(
          'Health',
          style: TextStyle(color: Colors.grey[200], fontSize: 35),
        ),
      ),
      backgroundColor: Colors.black,
      body: Padding(
        padding: const EdgeInsets.only(top: 10.0, left: 15.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Stack(
                children: [
                  Container(
                    padding: EdgeInsets.only(left: 15.0),
                    margin: EdgeInsets.only(right: 10.0),
                    width: w * 0.92,
                    height: h * 0.23,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(7.0),
                        boxShadow: [
                          BoxShadow(
                              color: Colors.orange[500].withOpacity(0.1),
                              blurRadius: 5.0,
                              spreadRadius: 0.5,
                              offset: Offset(0, 2))
                        ],
                        gradient: LinearGradient(
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter,
                            colors: [
                              Colors.orange[500],
                              Colors.orange[600],
                              Colors.orange[700],
                              Colors.orange[800]
                            ])),
                    child: Center(
                      child: Row(
                        children: [
                          Column(
                            children: [
                              Row(
                                children: [
                                  Transform.rotate(child: FaIcon(FontAwesomeIcons.shoePrints, color: Colors.black, size: 25.0), angle: -1.7,),
                                  SizedBox(width: 5.0,),
                                  LinearPercentIndicator(
                                    width: 100.0,
                                    animation: true,
                                    animationDuration: 1300,
                                    lineHeight: 12.0,
                                    percent: 0.6,
                                    backgroundColor: Colors.grey[900].withOpacity(0.5),
                                    progressColor: Colors.black,
                                  )
                                ],
                              ),
                              Padding(
                                padding: EdgeInsets.symmetric(vertical: 8.0),
                                child: Row(
                                  children: [
                                    FaIcon(FontAwesomeIcons.road, color: Colors.black, size: 25.0),
                                    SizedBox(width: 5.0,),
                                    LinearPercentIndicator(
                                      width: 100.0,
                                      animation: true,
                                      animationDuration: 1300,
                                      lineHeight: 12.0,
                                      percent: 0.2,
                                      backgroundColor: Colors.grey[900].withOpacity(0.5),
                                      progressColor: Colors.black,
                                    )
                                  ],
                                ),
                              ),
                              Row(
                                children: [
                                  FaIcon(FontAwesomeIcons.fireAlt, color: Colors.black, size: 25.0),
                                  SizedBox(width: 5.0,),
                                  LinearPercentIndicator(
                                    width: 100.0,
                                    animation: true,
                                    animationDuration: 1300,
                                    lineHeight: 12.0,
                                    percent: 0.45,
                                    backgroundColor: Colors.grey[900].withOpacity(0.5),
                                    progressColor: Colors.black,
                                  )
                                ],
                              ),
                            ],
                            mainAxisAlignment: MainAxisAlignment.center,
                          ),
                          SizedBox(width: 17.0,),
                          Container(height: h*0.18, width: 1.0, color: Colors.black,),
                          SizedBox(width: 20.0,),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('6000 Steps', style: TextStyle(color: Colors.black, fontSize: 22.0),),
                              Padding(
                                padding: EdgeInsets.symmetric(vertical: 10.0),
                                child: Text('4.5 KM', style: TextStyle(color: Colors.black, fontSize: 22.0),),
                              ),
                              Text('250 kCal', style: TextStyle(color: Colors.black, fontSize: 22.0),),
                            ],
                            mainAxisAlignment: MainAxisAlignment.center,
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 10.0,
              ),
              Row(
                children: [
                  FitnessCardDark(
                    onpressed: () {
                      print('Hello');
                    },
                    subtitle: 'Stay fit.. Stay healthy',
                    title: 'Excercise',
                    cardImage: Image.asset(
                        'assets/images/homescreens/fitnessapp/muscle.png',
                        height: h * 0.14),
                  ),
                  FitnessCardDark(
                    onpressed: () {},
                    subtitle: 'Sleep tight',
                    title: 'Sleep',
                    cardImage: Image.asset(
                        'assets/images/homescreens/fitnessapp/moon.png',
                        height: h * 0.14),
                  ),
                ],
              ),
              Row(
                children: [
                  FitnessCardDark(
                    onpressed: () {},
                    subtitle: 'No cholesterol please!!',
                    title: 'Heart-rate',
                    cardImage: Image.asset(
                        'assets/images/homescreens/fitnessapp/heartbeat.png',
                        height: h * 0.14),
                  ),
                  FitnessCardDark(
                    onpressed: () {},
                    subtitle: 'Stay light as air',
                    title: 'Weight',
                    cardImage: Image.asset(
                        'assets/images/homescreens/fitnessapp/weight.png',
                        height: h * 0.14),
                  ),
                ],
              ),
              Row(
                children: [
                  FitnessCardDark(
                    onpressed: () {},
                    subtitle: 'do better than tomorrow',
                    title: 'Records',
                    cardImage: Image.asset(
                        'assets/images/homescreens/fitnessapp/data.png',
                        height: h * 0.14),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
