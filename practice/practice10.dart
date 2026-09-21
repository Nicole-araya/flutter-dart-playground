
import 'package:flutter/material.dart';

// Custom Method

class colorWidet extends StatefulWidget {
  const colorWidet({super.key});

  @override
  State<colorWidet> createState() => _colorWidetState();
}

class _colorWidetState extends State<colorWidet> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Custom Method'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              methodCustom(),
              Container(
                color: Colors.red,
                width: 500,
                height: 100,
                child: Center(
                  child: Text(
                    'Container',
                    style: TextStyle(fontSize: 30, color: Colors.white),
                  ),
                ),
              ),
            ],
        ),
      ),
    ),
    );
  }
}

Widget methodCustom(){
  return Container(
    color: Colors.blue,
    width: 500,
    height: 100,
    child: Center(
      child: Text(
        'Custom Method',
        style: TextStyle(fontSize: 30, color: Colors.white),
      ),
    ),
  );
}