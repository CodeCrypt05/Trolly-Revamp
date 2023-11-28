import 'package:flutter/material.dart';
import 'package:trolly_revamp/pages/home_screen.dart';
import 'package:trolly_revamp/pages/login_screen.dart';
import 'package:trolly_revamp/pages/register_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: const ColorScheme.light(
            primary: Color.fromARGB(235, 255, 255, 255),
            background: Color.fromARGB(250, 255, 255, 255)),
        useMaterial3: true,
      ),
      home: const HomeScreen(),
    );
  }
}
