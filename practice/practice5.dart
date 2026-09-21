
import 'package:flutter/material.dart';

class ListApp extends StatefulWidget {
  const ListApp({super.key});

  @override
  State<ListApp> createState() => _ListAppState();
}

class _ListAppState extends State<ListApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'ListView Example',
      home: Scaffold(
        appBar: AppBar(
          title: Text('ListView Example'),
        ),
        body: ListView.builder(
          itemCount: 5,
          itemBuilder: (context, index) {
            return ListTile(
              leading: Icon(Icons.person),
              title: Text('Item ${index + 1}'),
              subtitle: Text('Subtitle ${index + 1}'),
              trailing: Icon(Icons.arrow_forward),
            );
          },
        ),
      ),
    );
  }
}

// ListView.builder no crea necesariamente los 5 elementos 
// todos al mismo tiempo. Construye los que necesita mostrar 
// en pantalla y puede crear los demás cuando haces scroll. 
// Por eso es preferible para listas grandes.