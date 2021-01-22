import 'package:screenify/Screens/LoginScreens/muziko/muziko.dart';
import 'package:screenify/Screens/LoginScreens/purvik_rana/purvik_rana.dart';
import 'package:screenify/constants.dart';

List<Map<String, dynamic>> LoginScreens = [
  {
    'screen': Muziko(),
    'name': "Muziko",
    'image': '$loginscreens/muziko/muziko.jpg'
  },
  {
    'screen': PurvikRana(),
    'name': "Purvik Rana",
    'image': '$loginscreens/purvikrana/purvikrana.png'
  }
];
