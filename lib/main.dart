import 'package:flutter/material.dart';

import 'Screens/opening_screen.dart';

void main() {
  runApp(
      const OurQuizzApp()); 
}


class OurQuizzApp extends StatelessWidget {
  const OurQuizzApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      debugShowCheckedModeBanner: false,
      home:const OpeningScreen(),
      
    );
  }
}