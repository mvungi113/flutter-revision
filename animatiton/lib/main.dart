import 'package:flutter/material.dart';
import 'package:kindo/animation/page%20route%20animation/animation_route.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const CurveTweenPage(),
    );
  }
}
