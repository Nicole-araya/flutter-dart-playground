
import 'package:flutter/material.dart';

class ButtonWidget extends StatefulWidget {
  const ButtonWidget({super.key});

  @override
  State<ButtonWidget> createState() => _ButtonWidgetState();
}

class _ButtonWidgetState extends State<ButtonWidget> {

  String _buttonText = '';
  bool _isButtonPressed = false;

  @override
  void initState() {
    super.initState();
    _buttonText = 'Press Me';
    _isButtonPressed = false;
  }

  void methodToUpdateState() {
    if (!_isButtonPressed) {
      _isButtonPressed = true;
    } else {
      _isButtonPressed = false;
    }
    setState(() {
      _buttonText = _isButtonPressed ? 'Button Pressed' : 'Press Me';
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My First Stateful Widget',
      home: Scaffold(
        appBar:  AppBar(
          title: Text('My First Stateful Widget'),
        ),
        body: Center(
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.pink,
              foregroundColor: Colors.white,
              padding: EdgeInsets.symmetric(horizontal: 50, vertical: 30),
              textStyle: TextStyle(fontSize: 24),
            ),
            onPressed: () { methodToUpdateState(); },
            child: Text(_buttonText),
        ),
        ),
      ),
    );
  }
}