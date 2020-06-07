import 'package:flutter/material.dart';

class HomePageCard extends StatelessWidget {
  String CardTitle;
  AssetImage childImage;

  HomePageCard({@required this.CardTitle, @required this.childImage});

  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;
    return Stack(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(10.0),
          child: Container(
            margin: EdgeInsets.symmetric(vertical: 10.0),
            color: Colors.grey[200],
            child: Image(image: childImage),
            height: h * 0.2,
            width: w * 0.95,
          ),
        ),
        Container(
          margin: EdgeInsets.symmetric(vertical: 10.0),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10.0),
              color: Colors.black54.withOpacity(0.5)),
          height: h * 0.2,
          width: w * 0.95,
          child: Center(
            child: Text(
              CardTitle,
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 25.0,
                  fontStyle: FontStyle.italic,
                  letterSpacing: 4.0),
            ),
          ),
        ),
      ],
    );
  }
}
