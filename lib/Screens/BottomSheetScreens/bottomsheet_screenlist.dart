import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:screenify/ListModel/bottomSheetScreenListModel.dart';
import 'package:screenify/widgets/ScreenListCard.dart';

class BottomSheetScreenList extends StatelessWidget {
  String ListName;

  BottomSheetScreenList({@required this.ListName});

  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Color(0xfff6f6f6),
      body: Stack(
        children: [
          SingleChildScrollView(
            physics: BouncingScrollPhysics(),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(height: h * 0.1),
                Container(
                  padding: EdgeInsets.symmetric(vertical: 5.0),
                  child: Center(
                    child: Text(
                      "BottomSheets",
                      style: TextStyle(fontSize: 25.0),
                    ),
                  ),
                ),
                GridView.builder(
                    physics: NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    itemCount: BottomSheetScreens.length,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisSpacing: 1.0,
                      childAspectRatio: 0.85,
                      mainAxisSpacing: 1.0,
                      crossAxisCount: 2,
                    ),
                    itemBuilder: (context, index) {
                      return ScreenListCard(
                        Page: BottomSheetScreens[index]['screen'],
                        PageName: BottomSheetScreens[index]['name'],
                        screenprev: AssetImage(BottomSheetScreens[index]['image']),
                      );
                    }),
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
