import 'package:flutter/material.dart';
import 'package:screenify/widgets/ScreenListCard.dart';

class ScreensList extends StatelessWidget {
  String ListName;
  ScreensList({@required this.ListName});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          SingleChildScrollView(
            physics: BouncingScrollPhysics(),
            child: Column(
              children: [
                SizedBox(
                  height: 50.0,
                ),
                Center(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 20.0),
                    child: Text(
                      ListName,
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 25.0,
                          fontWeight: FontWeight.bold,),
                    ),
                  ),
                ),
                ScreenListCard(),
                ScreenListCard(),
                ScreenListCard(),
                ScreenListCard(),
                ScreenListCard(),
                ScreenListCard(),
                ScreenListCard(),
              ],
            ),
          ),
          Positioned(
            top: 60,
            left: 10,
            child: IconButton(
                icon: Icon(Icons.arrow_back_ios),
                onPressed: () {
                  Navigator.pop(context);
                }),
          )
        ],
      ),
    );
  }
}
