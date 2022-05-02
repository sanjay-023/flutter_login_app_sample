import 'package:flutter/material.dart';

import 'splash_screen.dart';

const SAVE_KEY = 'userloggedin';
void main(List<String> args) {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primarySwatch: Colors.green),
      home: SplashScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}
