import 'package:flutter/material.dart';
import 'dart:math';
import 'package:provider/provider.dart';
import 'mainpage.dart';

class Appbar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 0,
      left: 0,
      right: 0,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 10),
        child: Row(
          children: [
            Text('CP'),
            Spacer(),
            Icon(Icons.menu),
          ],
        ),
      ),
    );
  }
}

double max(a, b) {
  if (a > b) {
    return a;
  }
  return b;
}

class First extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<PageOffset>(
      builder: (context, notifier, child) {
        //  print('================== >> ${notifier.offset}');
        double curr = 0;
        if (notifier.offset != null) {
          curr = -notifier.offset;
        }
        return Positioned(
          // top: 180,
          left: curr * 0.75,
          height: 200,
          width: 500,
          child: child,
        );
      },
      child: IgnorePointer(child: Image.asset('assets/leopard.png')),
    );
  }
}

class FirstPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        LamPage(),
        SizedBox(height: 40),
        Consumer<PageOffset>(builder: (context, notifier, child) {
          //  print('================== >> ${notifier.offset}');
          double curr = 0;
          if (notifier.page != null) {
            curr = notifier.page;
          }
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Opacity(
              opacity: max(0.0, 1 - 1.8 * curr),
              child: Text(
                'Travel Description',
                style: TextStyle(fontSize: 16),
              ),
            ),
          );
        }),
        SizedBox(height: 30),
        Descirption(),
      ],
    );
  }
}

class Descirption extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<PageOffset>(builder: (context, notifier, child) {
      //  print('================== >> ${notifier.offset}');
      double curr = 0;
      if (notifier.page != null) {
        curr = notifier.page;
      }
      return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Opacity(
          opacity: max(0.0, 1 - 1.8 * curr),
          child: Text(
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum est sapien, volutpat nec lectus non, aliquam aliquam magna. Nulla ac sem gravida, ultricies velit vel, ullamcorper est. ',
            style: TextStyle(fontSize: 14, color: Colors.grey),
          ),
        ),
      );
    });
  }
}

bool check(a, b) {
  if (a < b) {
    return true;
  }
  return false;
}

class PageIndicator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<PageOffset>(
      builder: (context, notifier, _) {
        double here = 0;
        if (notifier.page != null) here = notifier.page;
        return Align(
          alignment: Alignment.bottomCenter,
          child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
            Container(
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: here.round() == 0 ? Colors.white : Colors.grey,
              ),
              width: 10,
              height: 50,
            ),
            SizedBox(
              width: 10,
            ),
            Container(
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: here.round() == 1 ? Colors.white : Colors.grey,
              ),
              width: 10,
              height: 50,
            ),
          ]),
        );
      },
    );
  }
}

class ShareButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Positioned(
      right: 20,
      bottom: 30,
      child: Icon(Icons.share),
    );
  }
}

class LamPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Transform.translate(
      offset: Offset(-70, 0),
      child: Center(
        child: RotatedBox(
            quarterTurns: 1,
            child: Text(
              '37',
              style: TextStyle(
                  fontSize: 300,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 0.6),
            )),
      ),
    );
    //return Image.asset('assets/first.jpg',height: 100,);
  }
}
