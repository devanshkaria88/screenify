import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePageCard extends StatelessWidget {
  String CardTitle;
  AssetImage childImage;

  HomePageCard({@required this.CardTitle, @required this.childImage});

  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: w * 0.05, vertical: 10.0),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(10.0),
        child: Stack(
          children: [
            Image(
              image: childImage,
              fit: BoxFit.fill,
              height: h * 0.2,
              width: w * .95,
            ),
            Container(
              height: h * 0.2,
              width: w * 0.95,
              child: Center(
                  child: Text(CardTitle,
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 25.0,
                          letterSpacing: 4.0,
                          fontStyle: FontStyle.italic,
                          fontWeight: FontWeight.bold))),
              color: Colors.black.withOpacity(0.5),
            ),
          ],
        ),
      ),
    );
  }
}
