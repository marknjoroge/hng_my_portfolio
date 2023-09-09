import 'package:flutter/material.dart';
import 'package:hng_my_portfolio/screens/main_page.dart';

import 'utils/constants.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const MainPage(),
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.green,
        fontFamily: 'ComfortaaRegular',
        scaffoldBackgroundColor: kBgColor,
      ),
    );
  }
}