import 'package:flutter/material.dart';

class ScreenListCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;
    return Row(
      children: [
        Container(
          margin: EdgeInsets.only(top: 10, left: w*0.03),
          height: h*0.3,
          width: w*0.45,
          decoration: BoxDecoration(
            color: Colors.grey,
            borderRadius: BorderRadius.circular(10.0),
          ),
        ),
        Container(
          margin: EdgeInsets.only(top: 10, left: w*0.04),
          height: h*0.3,
          width: w*0.45,
          decoration: BoxDecoration(
            color: Colors.grey,
            borderRadius: BorderRadius.circular(10.0),
          ),
        ),
      ],
    );
  }
}
