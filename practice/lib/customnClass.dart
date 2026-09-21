import 'package:flutter/material.dart';

class customWidget extends StatelessWidget {
  const customWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.pink,
      child: Container(
        color: Colors.yellow,
        margin: EdgeInsets.all(50.0),
        child: Container(
          color: Colors.green,
          margin: EdgeInsets.all(50.0),
        ),
      ),
    );
  }
}