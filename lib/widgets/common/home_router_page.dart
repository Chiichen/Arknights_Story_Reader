import 'package:flutter/material.dart';

class HomeRouterPage extends StatefulWidget {
  const HomeRouterPage(
      {super.key, required this.defaultIndex, required this.bodyWidget});
  final int defaultIndex;
  final Widget bodyWidget;
  @override
  State<StatefulWidget> createState() => HomeRouterPageState();
}

class HomeRouterPageState extends State<HomeRouterPage> {
  int _selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    _selectedIndex = widget.defaultIndex;
    return Scaffold(
      body: widget.bodyWidget,
      bottomNavigationBar: NavigationBar(
        destinations: const [
          NavigationDestination(icon: Icon(Icons.home), label: '首页'),
          NavigationDestination(icon: Icon(Icons.book), label: '故事'),
          NavigationDestination(
              icon: Icon(Icons.account_circle_rounded), label: '个人'),
        ],
        selectedIndex: _selectedIndex,
        indicatorColor: Colors.amber,
        onDestinationSelected: _onItemTapped,
      ),
    );
  }

  void _onItemTapped(int index) {
    setState(() {
      if (_selectedIndex != index) {
        switch (index) {
          case 0:
            Navigator.pushNamed(context, "home");
          case 1:
            Navigator.pushNamed(context, 'profile');
          case 2:
            Navigator.pushNamed(context, 'story');
        }
      }
    });
    _selectedIndex = index;
  }
}
