
import 'package:flutter/material.dart';

/*
INPUT TEXT FIELD
BUTTONS
 */

class Practice11 extends StatefulWidget {
  const Practice11({super.key});

  @override
  State<Practice11> createState() => _Practice11State();
}

class _Practice11State extends State<Practice11> {

  String ptext = '';

  void method1(String value) {
    setState(() {
      ptext = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Custom Class'),
        ),
        body: Column(
          children: [
            TextField(
              onChanged: (String value) {
                method1(value);
              },
              decoration: InputDecoration(
                hintText: 'Type your name here...',
                border: OutlineInputBorder(),
                labelText: 'Enter your name',
              ),
            ),
            Text(
              'HELLO, $ptext!',
              style: TextStyle(fontSize: 30),
            ),

            ElevatedButton(
              onPressed: () {
                method1('');
              },
              child: Text('Clear'),
            ),
            TextButton( // TextButton is a button with no background color
              onPressed: () {
                method1('');
              },
              child: Text('Clear'),
            ),
          ]
        ),
      )
    );
  }
}