import 'package:flutter/material.dart';
import 'package:flutter_foodies/onboard_screens/welcome_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      themeMode: ThemeMode.light,
      debugShowCheckedModeBanner: false,
      home: WelcomeScreen(),
    );
  }
}

class MYHomePage extends StatefulWidget {
  const MYHomePage({super.key});

  @override
  State<MYHomePage> createState() => _MYHomePageState();
}

class _MYHomePageState extends State<MYHomePage> {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
