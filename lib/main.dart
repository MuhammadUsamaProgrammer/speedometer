import 'package:flutter/material.dart';
import 'package:speedometer/Black_hole/black_hole.dart';
import 'package:speedometer/image_parallex/image_parallex.dart';
import 'package:speedometer/speedometer/speedometer.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Speedometer',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.black),
        useMaterial3: true,
      ),
      // home: const Speedometer(),
      home: ImageParallex(),
    );
  }
}
