import 'package:arknights_story_reader/widgets/common/home_router_page.dart';
import 'package:flutter/material.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => ProfilePageState();
}

class ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return const HomeRouterPage(
        defaultIndex: 1, bodyWidget: Text('Profile page'));
  }
}
