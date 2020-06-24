import 'package:flutter/material.dart';

class ScreenListCard extends StatelessWidget {
  Widget LeftPage;
  Widget RightPage;
  String LeftPageName;
  String RightPageName;
  AssetImage leftscreenprev;
  AssetImage rightscreenprev;

  ScreenListCard({
    @required this.LeftPage,
    @required this.RightPage,
    @required this.LeftPageName,
    @required this.RightPageName,
    @required this.leftscreenprev,
    @required this.rightscreenprev,
  });

  @override
  Widget build(BuildContext context) {
    void openLeftPage() {
      Navigator.push(context, MaterialPageRoute(builder: (context) {
        return LeftPage;
      }));
    }

    void openRightPage() {
      Navigator.push(context, MaterialPageRoute(builder: (context) {
        return RightPage;
      }));
    }

    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;
    return Row(
      children: [
        GestureDetector(
          onTap: openLeftPage,
          child: Container(
            margin: EdgeInsets.only(top: 10, left: w * 0.03),
            child: Stack(
              children: [
                ClipRRect(
                  child: Image(
                    fit: BoxFit.fill,
                    image: leftscreenprev,
                    height: h * 0.3,
                    width: w * 0.45,
                  ),
                  borderRadius: BorderRadius.circular(10.0),
                ),
                Container(
                  decoration: BoxDecoration(
                    color: Colors.white.withOpacity(0.2),
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  padding: EdgeInsets.all(10.0),
                  width: w * 0.45,
                  height: h * 0.3,
                  child: Center(
                    child: Text(
                      LeftPageName,
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 20.0,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        GestureDetector(
          onTap: openRightPage,
          child: Container(
            margin: EdgeInsets.only(top: 10, left: w * 0.04),
            child: Stack(
              children: [
                ClipRRect(
                  child: Image(
                    fit: BoxFit.fill,
                    image: rightscreenprev,
                    height: h * 0.3,
                    width: w * 0.45,
                  ),
                  borderRadius: BorderRadius.circular(10.0),
                ),
                Container(
                  decoration: BoxDecoration(
                    color: Colors.white.withOpacity(0.2),
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  padding: EdgeInsets.all(10.0),
                  width: w * 0.45,
                  height: h * 0.3,
                  child: Center(
                    child: Text(
                      RightPageName,
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 20.0,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
