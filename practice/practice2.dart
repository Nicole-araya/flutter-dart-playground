
import 'package:flutter/material.dart';

class MyFirstWidget extends StatelessWidget {
  const MyFirstWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'My First Stateless Widget',
      home: new Scaffold(
        appBar: new AppBar(
          title: new Text('My First Stateless Widget'),
        ),
        body: new Container(
          color: Colors.pink,
          child: new Container(    
            color: Colors.orange,
            margin: const EdgeInsets.all(30.0),
            child: new Container(
              color: Colors.green,
              margin: const EdgeInsets.all(30.0),
              child: new Container(
                color: Colors.blue,
                margin: const EdgeInsets.all(30.0),
                child: new Container(
                  color: Colors.yellow,
                  margin: const EdgeInsets.all(30.0),
                  child: const Center(
                    child: Text(
                      'Hello, World!',
                      style: TextStyle(fontSize: 42),
                    ),
                  ),
                  ),
                ),
              ),

          ),
        ),
      ),
    );
  }
}

