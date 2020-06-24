import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FitnessCard extends StatelessWidget {
  VoidCallback onpressed;
  String title;
  String subtitle;
  Widget cardImage;

  FitnessCard({
    @required this.onpressed,
    @required this.title,
    @required this.subtitle,
    @required this.cardImage,
});

  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;
    return GestureDetector(
      onTap: onpressed,
      child: Container(
        margin: EdgeInsets.only(top: 10.0, bottom: 10.0, right: 8.0, left: 2.0),
        height: h * 0.28,
        width: w * 0.45,
        child: Stack(
          children: [
            Container(
              height: h * 0.28,
              width: w * 0.45,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(7.0),
                  border: Border.all(
                      color: Colors.white,
                      style: BorderStyle.solid,
                      width: 2.0),
                  boxShadow: [
                    BoxShadow(
                        color: Colors.grey[700].withOpacity(0.2),
                        spreadRadius: 0.5,
                        blurRadius: 5.0,
                        offset: Offset(0, 0))
                  ]),
            ),
            Positioned(
              top: 10.0,
              left: 10.0,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 19.0,
                        fontWeight: FontWeight.w600),
                  ),
                  SizedBox(
                    height: 1.0,
                  ),
                  Text(
                    subtitle,
                    style: TextStyle(color: Colors.grey[900], fontSize: 14.0),
                  ),
                ],
              ),
            ),
            Positioned(
              bottom: 1.0,
              right: 2.0,
              child: ColorFiltered(
                colorFilter: ColorFilter.mode(
                    Colors.white.withOpacity(0.3), BlendMode.modulate),
                child: cardImage
              ),
            ),
          ],
        ),
      ),
    );
  }
}
