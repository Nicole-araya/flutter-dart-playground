import 'package:flutter/material.dart';

class GridApp extends StatefulWidget {
  const GridApp({super.key});

  @override
  State<GridApp> createState() => _GridAppState();
}

class _GridAppState extends State<GridApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Grid Example',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Grid Example'),
        ),
        body: GridView.count(
          crossAxisCount: 3,
          //mainAxisExtent: 100, // altura fija de cada elemento
          childAspectRatio: 3/2, // ancho y alto iguales = 1.0
          mainAxisSpacing: 10,
          crossAxisSpacing: 10,
          children: List.generate(9, (index) {
            return Card(
              color: Colors.blue,
              child: Center(
                child: Text(
                  'Item ${index + 1}',
                  style: TextStyle(fontSize: 20, color: Colors.white),
                ),
            ),
          );
        }),
      ),
    )
    );
  }
}