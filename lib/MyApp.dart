import 'package:flutter/material.dart';
import 'package:circular_menu/circular_menu.dart';

class MyAppz extends StatefulWidget {
  @override
  _MyAppzState createState() => _MyAppzState();
}

class _MyAppzState extends State<MyAppz> {
  String _colorName = 'No';
  Color _color = Colors.black;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.pink,
          title: Text('Flutter Circular Menu'),
        ),
        body: CircularMenu(
          alignment: Alignment.bottomRight,
          toggleButtonColor: const Color.fromARGB(255, 30, 40, 233),
          items: [
            CircularMenuItem(
                color: Color.fromARGB(0, 182, 37, 37),
                onTap: () {
                  setState(() {
                    _color = Colors.blue;
                    _colorName = 'Blue1';
                  });
                }),
            CircularMenuItem(
                icon: Icons.folder,
                color: Colors.green,
                onTap: () {
                  setState(() {
                    _color = Colors.green;
                    _colorName = 'Green';
                  });
                }),
            CircularMenuItem(
                icon: Icons.article,
                color: Colors.blue,
                onTap: () {
                  setState(() {
                    _color = Colors.blue;
                    _colorName = 'Blue';
                  });
                }),
          ],
        ),
      ),
    );
  }
}
