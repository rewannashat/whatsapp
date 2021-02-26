import 'package:flutter/material.dart';
import 'package:whatsapp/OneScreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
    home: OneScreen(),
    );
  }
}

