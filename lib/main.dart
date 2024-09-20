import 'package:flutter/material.dart';
import 'package:taskproject/common/colors_s.dart';
import 'package:taskproject/view/StartScreen/splash.dart';
import 'package:taskproject/view/home/homepaged.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Task',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: primaryColor),
        useMaterial3: true,
      ),
      home: const SplashScreen(),
      //const SplashScreen(),
    );
  }
}