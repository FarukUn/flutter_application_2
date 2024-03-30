import 'package:flutter/material.dart';
import 'package:flutter_application_2/image_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Tomato Diseases',
      theme: ThemeData(

        colorScheme: ColorScheme.fromSeed(seedColor: Color.fromARGB(255, 24, 117, 33)),
        useMaterial3: true,
      ),
      home: const ImageScreen(),
    );
  }
}

