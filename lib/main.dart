import 'package:flutter/material.dart';
import 'package:loteria/screens/home_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Sugestão Mega Sena',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home:HomeScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}
