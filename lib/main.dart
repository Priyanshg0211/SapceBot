import 'package:flutter/material.dart';
import 'package:spacebot/UI/Intopage.dart';
void main()=> runApp(new MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Intorpage(),
    );
  }
} 