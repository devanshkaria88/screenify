import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'dart:math';
import 'current_page.dart';

class PageOffset with ChangeNotifier {
  double _offset;
  double _page;
  PageOffset(PageController pageController) {
    pageController.addListener(() {
      _offset = pageController.offset;
      print(_offset);
      _page = pageController.page;
      notifyListeners();
    });
  }
  double get page => _page;
  double get offset => _offset;
}

class MainPage extends StatelessWidget {
  final PageController _pageController = PageController();

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      builder: (_) => PageOffset(_pageController),
      child: SafeArea(
        child: Scaffold(
          backgroundColor: Colors.black12,
          body: Stack(
            alignment: Alignment.centerLeft,
            children: [
              PageView(
                controller: _pageController,
                physics: ClampingScrollPhysics(),
                children: [
                  FirstPage(),
                  Second(),
                ],
              ),
              First(),
              VultureImage(),
             // Appbar(),
              ShareButton(),
              PageIndicator(),
              Detail(),
              StartCamp(),
              UpArrow(),
              StartTime(),
              EndCamp(),
              EndTime(),
              Distance(),
              Dots(),
              MapButton(),
            ],
          ),
        ),
      ),
    );
  }
}

class Second extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(child: CircleAn()),
    );
    
  }
}

class StartCamp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<PageOffset>(builder: (context, notifier, child) {
      //  print('================== >> ${notifier.offset}');
      double curr = 0;
      double here = 0;
      if (notifier.page != null) {
        curr = notifier.page;
      }
      if (notifier.offset != null) {
        here = notifier.offset;
      }
      return Positioned(
        bottom: 110,
        left: 0.2 * here - 60,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Opacity(
            opacity: max(0.0, 5 * curr - 4),
            child: Text(
              'Start Camp',
              style: TextStyle(fontSize: 14, color: Colors.grey),
            ),
          ),
        ),
      );
    });
  }
}

class StartTime extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<PageOffset>(builder: (context, notifier, child) {
      //  print('================== >> ${notifier.offset}');
      double curr = 0;
      double here = 0;
      if (notifier.page != null) {
        curr = notifier.page;
      }
      if (notifier.offset != null) {
        here = notifier.offset;
      }
      return Positioned(
        bottom: 80,
        left: 0.2 * here - 60,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Opacity(
            opacity: max(0.0, 5 * curr - 4),
            child: Text(
              '10:00 PM',
              style: TextStyle(fontSize: 14, color: Colors.grey),
            ),
          ),
        ),
      );
    });
  }
}

class Detail extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<PageOffset>(builder: (context, notifier, child) {
      //  print('================== >> ${notifier.offset}');
      double curr = 0;
      double here = 0;
      if (notifier.page != null) {
        curr = notifier.page;
      }
      if (notifier.offset != null) {
        here = notifier.offset;
      }
      return Positioned(
        left: MediaQuery.of(context).size.width - here,
        bottom: 150,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Opacity(
            opacity: max(0.0, 5 * curr - 4),
            child: Text(
              'Travel Details',
              style: TextStyle(fontSize: 16, color: Colors.white),
            ),
          ),
        ),
      );
    });
  }
}

class UpArrow extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Positioned(
      right: 30,
      bottom: 150,
      child: Icon(Icons.keyboard_arrow_up),
    );
  }
}

class VultureImage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<PageOffset>(
      builder: (context, notifier, child) {
        //  print('================== >> ${notifier.offset}');
        double curr = 0;
        if (notifier.offset != null) {
          curr = -notifier.offset;
        }
        // print(MediaQuery.of(context).size.width);
        return Positioned(
          // top: 180,
          left: 30 + MediaQuery.of(context).size.width + 0.75 * curr,
          height: MediaQuery.of(context).size.height / 3,

          child: child,
        );
      },
      child: Image.asset('assets/vulture.png'),
    );
  }
}

class Distance extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<PageOffset>(builder: (context, notifier, child) {
      //  print('================== >> ${notifier.offset}');
      double curr = 0;
      double here = 0;
      if (notifier.page != null) {
        curr = notifier.page;
      }
      if (notifier.offset != null) {
        here = notifier.offset;
      }
      return Positioned(
        bottom: 77,
        right: -30 + MediaQuery.of(context).size.width / 2,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Opacity(
            opacity: max(0.0, 5 * curr - 4),
            child: Text(
              '43 KM',
              style: TextStyle(
                  fontSize: 16,
                  color: Colors.white,
                  fontWeight: FontWeight.bold),
            ),
          ),
        ),
      );
    });
  }
}

class EndCamp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<PageOffset>(builder: (context, notifier, child) {
      //  print('================== >> ${notifier.offset}');
      double curr = 0;
      double here = 0;
      if (notifier.page != null) {
        curr = notifier.page;
      }
      if (notifier.offset != null) {
        here = notifier.offset;
      }
      return Positioned(
        bottom: 110,
        right: -70 + 0.3 * here,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Opacity(
            opacity: max(0.0, 5 * curr - 4),
            child: Text(
              'End Camp',
              style: TextStyle(fontSize: 14, color: Colors.grey),
            ),
          ),
        ),
      );
    });
  }
}

class EndTime extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<PageOffset>(builder: (context, notifier, child) {
      //  print('================== >> ${notifier.offset}');
      double curr = 0;
      double here = 0;
      if (notifier.page != null) {
        curr = notifier.page;
      }
      if (notifier.offset != null) {
        here = notifier.offset;
      }
      return Positioned(
        bottom: 80,
        right: -70 + 0.3 * here,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Opacity(
            opacity: max(0.0, 5 * curr - 4),
            child: Text(
              '11:00 AM',
              style: TextStyle(fontSize: 14, color: Colors.grey),
            ),
          ),
        ),
      );
    });
  }
}

class Dots extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<PageOffset>(builder: (context, notifier, child) {
      double curr = 0;
      double here = 0;
      if (notifier.page != null) {
        curr = notifier.page;
      }
      if (notifier.offset != null) {
        here = notifier.offset;
      }
      double opacity = max(0.00, 4 * curr - 3);
      return Positioned(
        bottom: 113,
        right: 0,
        left: 0,
        child: Opacity(
          opacity: opacity,
          child: Stack(
            alignment: Alignment.center,
            children: [
              Container(
                margin: EdgeInsets.only(left: opacity * 40.00),
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.white,
                ),
                height: 8,
              ),
              Container(
                margin: EdgeInsets.only(left: opacity * 10.00),
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.grey,
                ),
                height: 4,
              ),
              Container(
                margin: EdgeInsets.only(right: opacity * 10.00),
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.grey,
                ),
                height: 4,
              ),
              Container(
                margin: EdgeInsets.only(right: opacity * 40.00),
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.grey,
                  //border: Border.all(color:Colors.white),
                ),
                height: 8,
              ),
            ],
          ),
        ),
      );
    });
  }
}

class MapButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Positioned(
      left: 0,
      bottom: 15,
      child: Consumer<PageOffset>(
        builder: (context, notifier, child) {
          double curr = 0;
          double here = 0;
          if (notifier.page != null) {
            curr = notifier.page;
          }
          if (notifier.offset != null) {
            here = notifier.offset;
          }
          double opacity = max(0.00, 4 * curr - 3);
          return Opacity(
            opacity: opacity,
            child: child,
          );
        },
        child: FlatButton(
          onPressed: () {},
          child: Text(
            'Map',
            style: TextStyle(color: Colors.grey),
          ),
        ),
      ),
    );
  }
}

class CircleAn extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<PageOffset>(
      builder: (context, notifier, child) {
        double curr = 0;
        double here = 0;
        if (notifier.page != null) {
          curr = notifier.page;
        }
        if (notifier.offset != null) {
          here = notifier.offset;
        }
        double opacity = max(0.00, 4 * curr - 3);
        return Container(
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: Colors.grey,
          ),
          width: (MediaQuery.of(context).size.width) * (opacity)*0.6+20,
        );
      },
    );
  }
}
