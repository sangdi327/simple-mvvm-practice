import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:simple_mvvm_pattern_practice/view/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepOrange)),
      home: const Home(),
    );
  }
}
