import 'package:flutter/material.dart';
import 'otherpage.dart';

/*
* DRAWER
* ROUTES
*/

class DrawerWidget extends StatelessWidget {

   DrawerWidget({super.key});

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        key: scaffoldKey,
        appBar: AppBar(
          title: const Text('Drawer Widget'),
        ),
        drawer: Drawer(
          child: ListView(
            padding: EdgeInsets.zero,
            children: [
              /*const DrawerHeader(
                decoration: BoxDecoration(
                  color: Colors.blue,
                ),
                child: Text('Drawer Header'),
              ),*/
              UserAccountsDrawerHeader(
                accountName: const Text('John Doe'),
                accountEmail: const Text('john.doe@example.com'),
                currentAccountPicture: const CircleAvatar(
                  backgroundImage: NetworkImage(
                      'https://www.w3schools.com/howto/img_avatar.png'),
                ),
                decoration: const BoxDecoration(
                  color: Colors.blue,
                ),
                otherAccountsPictures: const [
                  CircleAvatar(
                    backgroundImage: NetworkImage(
                        'https://www.w3schools.com/howto/img_avatar2.png'),
                  ),
                ],
              ),
              ListTile(
                title: const Text('Item 1'),
                trailing: const Icon(Icons.arrow_forward),
                onTap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (_) => const Otherpage(title: 'Item 1 Page'),
                    ),
                  );
                  debugPrint('Item 1 tapped');
                },
              ),
              ListTile(
                title: const Text('Item 2'),
                trailing: const Icon(Icons.arrow_forward),
                onTap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (_) => const Otherpage(title: 'Item 2 Page'),
                    ),
                  );
                  debugPrint('Item 2 tapped');
                },
              ),
              ListTile(
                title: const Text('Close Drawer'),
                trailing: const Icon(Icons.close),
                onTap: () {
                  scaffoldKey.currentState?.closeDrawer();
                  debugPrint('Close Drawer tapped');
                },
              ),
            ],
          ),
        ),
        body: const Center(
          child: Text('Click the top-left icon to open the drawer.'),
        ),
      );
  }
}