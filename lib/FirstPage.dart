import 'package:flutter/material.dart';
import 'SecondPage.dart'; // Import the second page
import 'package:page_transition/page_transition.dart';

class FirstPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('First Page'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.push(
              context,
              PageTransition(type: PageTransitionType.bottomToTopPop, child: SecondPage(), childCurrent: this),
            );
          },
          child: Text('Go to Second Page'),
        ),
      ),
    );
  }
}