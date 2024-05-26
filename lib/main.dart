import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_layout/detail_screen.dart';
import 'package:flutter_layout/main_screen.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Xiaomi',
      theme: ThemeData(),
      home: const MainScreen(),
    );
  }
}