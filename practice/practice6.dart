
import 'package:flutter/material.dart';

class StackApp extends StatefulWidget {
  const StackApp({super.key});

  @override
  State<StackApp> createState() => _StackAppState();
}

class _StackAppState extends State<StackApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Stack Example',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Stack Example'),
        ),
        body: Stack(
          alignment: Alignment.center,
          children: [
            Card(
              color: Colors.blue,
              child: Padding(
                padding: const EdgeInsets.all(200.0),

              ),
            ),
            Card(
              color: Colors.white,
              child: Padding(
                padding: const EdgeInsets.all(150.0),
              ),
            ),
            Card(
              color: Colors.red,
              child: Padding(
                padding: const EdgeInsets.all(100.0),
              ),
            )
          ],
        ),
      ),
    );
  }
}