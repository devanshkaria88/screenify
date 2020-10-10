import 'package:screenify/Screens/HomeScreens/fitnessapp/fitnessapp.dart';
import 'package:screenify/Screens/HomeScreens/fitnessappdark/fitnessappdark.dart';

List<Map<String, dynamic>> HomeScreens = [
  {
    'screen': FitnessApp(),
    'name' : "Fitness App Light",
    'image' : "assets/images/homescreens/fitnessapp/title.jpeg"
  },
  {
    'screen': FitnessAppDark(),
    'name' : "Fitness App Dark",
    'image' : "assets/images/homescreens/fitnessapp/titledark.jpeg"
  },
];
