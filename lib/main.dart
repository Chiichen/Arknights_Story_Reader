import 'package:arknights_story_reader/widgets/home/home_page.dart';
import 'package:arknights_story_reader/widgets/profile/profile_page.dart';
import 'package:arknights_story_reader/widgets/story/story_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      routes: {
        "home": (context) => const HomePage(),
        "profile": (context) => const ProfilePage(),
        "story": (context) => const StoryPage(),
      },
      initialRoute: "home",
    );
  }
}
