
import 'package:flutter/material.dart';

class AppBarPractice extends StatefulWidget {
  const AppBarPractice({super.key});

  @override
  State<AppBarPractice> createState() => _AppBarPracticeState();
}

class _AppBarPracticeState extends State<AppBarPractice> {

  String data = '';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'AppBar Practice',
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
          title: const Text('AppBar Practice'),
          //centerTitle: true,
          titleSpacing: 30.0, // Spacing between the title and leading/trailing widgets
          //elevation: 80.0, // Shadow depth of the AppBar
          //toolbarOpacity: 0.8, // Opacity of the AppBar

          leading: IconButton( icon: const Icon(Icons.menu), onPressed: null, ),
          actions: [
            IconButton( icon: const Icon(Icons.arrow_forward), onPressed: () { setState(() { data = "Forward"; }); }, ),
            IconButton( icon: const Icon(Icons.close), onPressed: () { setState(() { data = "Close"; }); }, ),
          ],  
        ),
        body: Center(
          child: Text(data),
        ),
      ),
    );
  }
}