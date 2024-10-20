import 'package:flutter/material.dart';
import 'package:foodies/home%20Screen/homeScreen.dart';
import 'package:foodies/home%20Screen/mainScreen.dart';
import 'package:foodies/home%20Screen/widget/addbasket.dart/addbasket.dart';
import 'package:foodies/splashScreen/splashScreen.dart';

// Adjust the import as necessary

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Restaurant(),
    );
  }
}
