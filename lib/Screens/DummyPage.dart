import 'package:flutter/material.dart';

class LeftPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Left Page'),),
      body: Center(
        child: Text('This is the left page'),
      ),
    );
  }
}

class RightPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Right Page'),),
      body: Center(
        child: Text('This is the right page'),
      ),
    );
  }
}
