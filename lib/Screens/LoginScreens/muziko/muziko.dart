import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:screenify/constants.dart';

class Muziko extends StatefulWidget {
  @override
  _MuzikoState createState() => _MuzikoState();
}

class _MuzikoState extends State<Muziko> {
  final LinearGradient logingradient = LinearGradient(
      begin: AlignmentDirectional.bottomCenter,
      end: AlignmentDirectional.topCenter,
      colors: [
        Colors.black.withOpacity(0.3),
        Colors.black87.withOpacity(0.3),
        Colors.black54.withOpacity(0.3),
        Colors.black45.withOpacity(0.3),
        Colors.black26.withOpacity(0.3),
      ]);

  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("$loginscreens/muziko/muziko.jpg"),
                    fit: BoxFit.fill)),
          ),
          BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
            child: Container(
              decoration: BoxDecoration(gradient: logingradient),
            ),
          ),
          Container(
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    height: h * 0.17,
                  ),
                  Center(
                    child: Text(
                      "MUZIKO",
                      style: GoogleFonts.coveredByYourGrace(
                          color: Colors.green[600],
                          fontSize: 80.0,
                          fontWeight: FontWeight.bold,
                          letterSpacing: 10.0),
                    ),
                  ),
                  SizedBox(
                    height: h * 0.07,
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(vertical: 10.0),
                    width: w * 0.85,
                    child: TextField(
                      keyboardType: TextInputType.emailAddress,
                      decoration: InputDecoration(
                        hintText: "Email or Phone",
                        hintStyle:
                            TextStyle(color: Colors.grey, fontSize: 14.0),
                        fillColor: Colors.white,
                        filled: true,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(vertical: 10.0),
                    width: w * 0.85,
                    child: TextField(
                      obscureText: true,
                      decoration: InputDecoration(
                        hintText: "Password",
                        hintStyle:
                            TextStyle(color: Colors.grey, fontSize: 14.0),
                        fillColor: Colors.white,
                        filled: true,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: h * 0.07,
                  ),
                  Container(
                    height: 50,
                    width: w * 0.85,
                    decoration: BoxDecoration(
                      color: Colors.green[600],
                      borderRadius: BorderRadius.circular(50.0),
                    ),
                    child: Center(
                        child: Text(
                      "Login",
                      style: GoogleFonts.lato(
                        fontSize: 20.0,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    )),
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  Text(
                    ".......................   or   .......................",
                    style: TextStyle(color: Colors.white, fontSize: 15.0),
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  Container(
                    height: 50,
                    width: w * 0.85,
                    decoration: BoxDecoration(
                      color: Colors.blue[600],
                      borderRadius: BorderRadius.circular(50.0),
                    ),
                    child: Center(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          FaIcon(
                            FontAwesomeIcons.facebookF,
                            color: Colors.white,
                          ),
                          SizedBox(
                            width: 20.0,
                          ),
                          Container(
                            height: 50.0,
                            width: 1.0,
                            color: Colors.white,
                          ),
                          SizedBox(
                            width: 20.0,
                          ),
                          Text(
                            "Login with Facebook",
                            style: GoogleFonts.lato(
                              fontSize: 20.0,
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
