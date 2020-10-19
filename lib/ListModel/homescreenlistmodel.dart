import 'package:screenify/Screens/HomeScreens/fitnessapp/fitnessapp.dart';
import 'package:screenify/Screens/HomeScreens/fitnessappdark/fitnessappdark.dart';
import 'package:screenify/Screens/HomeScreens/shoppingScreen/shoppingScreen.dart';

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
  {
    'screen': ShoppingScreen(),
    'name' : "ShoppingScreen",
    'image' : "assets/images/homescreens/shoppingScreen/shoppingScreen.png"
  },



];
