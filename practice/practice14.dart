
import 'package:flutter/material.dart';


/*
* SnackBar: Show a notification at the bottom of the screen.
* AlertDialog: Show a dialog box with a message and buttons.
*/

class NotiWiget extends StatefulWidget {
  const NotiWiget({super.key});

  @override
  State<NotiWiget> createState() => _NotiWigetState();
}

class _NotiWigetState extends State<NotiWiget> {

  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  void method1(BuildContext context) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text('¡Notificación!'),
        duration: Duration(seconds: 2),
      ),
    );
  }

  void dialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
          title: Text('¡Notificación!'),
          content: Text('Este es un mensaje de notificación.'),
          actions: <Widget>[
            TextButton(
              child: Text('Cerrar'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        )
    );
  }

  late SimpleDialog _sb;

  void _showSimpleDialog() {
    _sb = SimpleDialog(
      title: Text('Simple Dialog'),
      children: <Widget>[
        SimpleDialogOption(
          onPressed: () {
            print('Option 1 selected');
          },
          child: Text('Option 1'),
        ),
        SimpleDialogOption(
          onPressed: () {
            print('Option 2 selected');
          },
          child: Text('Option 2'),
        ),
        SimpleDialogOption(
          onPressed: () {
            Navigator.pop(context);
          },
          child: Text('Close'),
        ),
      ],
    );

    showDialog(
      context: context,
      builder: (BuildContext context) {
        return _sb;
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        key: _scaffoldKey,
        appBar: AppBar(
          title: const Text('Notificaciones'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: () {
                  method1(context);
                },
                child: const Text('Mostrar Notificación'),
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  dialog(context);
                },
                child: const Text('Mostrar Diálogo'),
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  _showSimpleDialog();
                },
                child: const Text('Mostrar Simple Dialog'),
              ),
            ],
          ),
        ),
      );
  }
}