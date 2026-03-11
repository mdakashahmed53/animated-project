import 'package:animated_app/home.dart';
import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Animated app',
      home: Home(),
      debugShowCheckedModeBanner: false,
    );
  }
}