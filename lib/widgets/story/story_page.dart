import 'package:arknights_story_reader/widgets/common/home_router_page.dart';
import 'package:flutter/material.dart';

class StoryPage extends StatefulWidget {
  const StoryPage({super.key});
  @override
  State<StatefulWidget> createState() => StoryPageState();
}

class StoryPageState extends State<StoryPage> {
  @override
  Widget build(BuildContext context) {
    return const HomeRouterPage(
        defaultIndex: 2, bodyWidget: Text('Story page'));
  }
}
