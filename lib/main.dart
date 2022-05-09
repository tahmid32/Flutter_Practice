import 'package:flutter/material.dart';
import 'first_screen.dart';
import 'second_screen.dart';
import 'final_screen.dart';

void main() {
  runApp(
    MaterialApp(
      title: 'Named Routes Demo',
      initialRoute: '/',
      routes: {
        '/': (context) => const FirstScreen(),
        '/second': (context) => const SecondScreen(),
        '/final': (context) => const FinalScreen(),
      },
    ),
  );
}


