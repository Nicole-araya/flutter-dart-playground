import 'package:flutter/material.dart';

class TopBottonTabBar extends StatefulWidget {
  const TopBottonTabBar({super.key});

  @override
  State<TopBottonTabBar> createState() => _TopBottonTabBarState();
}

class _TopBottonTabBarState extends State<TopBottonTabBar> with SingleTickerProviderStateMixin {

  late TabController _controller;
  
  void initState() {
    _controller = TabController(length: 3, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('TabBar'),
          bottom: TabBar(
            controller: _controller,
            tabs: [
              Tab(icon: Icon(Icons.home)),
              Tab(icon: Icon(Icons.supervisor_account)),
              Tab(icon: Icon(Icons.close)),
            ],
          ),
        ),
        body: TabBarView(
          controller: _controller,
          children: [
            Center(child: Text('Welcome to Home')),
            Center(child: Text('Welcome to Account')),
            Center(child: Text('CLOSE')),
          ],
        ),
        bottomNavigationBar: Material(
          color: Colors.blue,
          child: TabBar(
            controller: _controller,
            tabs: [
              Tab(icon: Icon(Icons.home)),
              Tab(icon: Icon(Icons.supervisor_account)),
              Tab(icon: Icon(Icons.close)),
            ],
          ),
        ),
        
      ),
    );
  }
}