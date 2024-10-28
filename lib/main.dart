import 'package:flutter/material.dart';
import 'package:lecture_6/screens/home_screen.dart';
import 'package:lecture_6/screens/layout_screen.dart';
import 'package:lecture_6/screens/second_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Навігація та Layout\'и у Flutter',
      theme: ThemeData(primarySwatch: Colors.blue),
      initialRoute: '/',
      routes: {
        '/': (context) => const HomeScreen(),
        '/second': (context) => const SecondScreen(),
        '/layout': (context) => const LayoutScreen(),
      },
    );
  }
}

