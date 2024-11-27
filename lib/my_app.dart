import 'package:flutter/material.dart';
import 'package:flutter_timer/countdown_screen.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter App',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Sistema de Timer'),
        ),
        body: const Center(
          child: CountdownScreen(),
        ),
      ),
    );
  }
}
