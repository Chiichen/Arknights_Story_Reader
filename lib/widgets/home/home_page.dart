import 'package:arknights_story_reader/widgets/common/home_router_page.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => HomePageState();
}

class HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return const HomeRouterPage(defaultIndex: 0, bodyWidget: Text('Home page'));
  }
}
