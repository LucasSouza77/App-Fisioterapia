import 'package:flutter/material.dart';
import 'package:projeto_integrador/screens/home_screen.dart';
import 'package:projeto_integrador/screens/login_screen.dart';
import 'package:projeto_integrador/screens/signup_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Fisio/Home",
      theme: ThemeData(
        primarySwatch: Colors.green,
        primaryColor: Colors.black
      ),
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),

    );
  }
}


