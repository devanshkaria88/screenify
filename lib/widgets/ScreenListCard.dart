import 'package:flutter/material.dart';

class ScreenListCard extends StatelessWidget {
  Widget Page;
  String PageName;
  AssetImage screenprev;

  ScreenListCard({
    @required this.Page,
    @required this.PageName,
    @required this.screenprev,
  });

  @override
  Widget build(BuildContext context) {


    void openPage() {
      Navigator.push(context, MaterialPageRoute(builder: (context) {
        return Page;
      }));
    }


    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;
    return GestureDetector(
      onTap: openPage,
      child: Container(
        margin: EdgeInsets.only(top: 10, left: w * 0.03),
        child: Stack(
          children: [
            ClipRRect(
              child: Image(
                fit: BoxFit.fill,
                image: screenprev,
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
                  PageName,
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
    );
  }
}
