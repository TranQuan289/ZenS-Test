import 'package:flutter/material.dart';
import 'package:mobile/jokee_single_serving.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Jokee Single Serving APP',
      home: JokeeSingleServing(),
    );
  }
}
