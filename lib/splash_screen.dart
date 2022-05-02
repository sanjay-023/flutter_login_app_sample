import 'package:flutter/material.dart';
import 'package:login/screen_home.dart';
import 'package:login/screen_login.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'main.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    checkUserLoggedIn();
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 237, 245, 237),
      body: SafeArea(
          child: Center(child: Image.asset('assets/images/pinfu-logo.png'))),
    );
  }

  Future<void> gotologin() async {
    await Future.delayed(Duration(seconds: 3));
    Navigator.of(context)
        .pushReplacement(MaterialPageRoute(builder: (ctx) => ScreenLogin()));
  }

  void checkUserLoggedIn() async {
    final _sharedprfns = await SharedPreferences.getInstance();
    final _userLoggedIn = _sharedprfns.getBool(SAVE_KEY);
    if (_userLoggedIn == null || _userLoggedIn == false) {
      gotologin();
    } else {
      Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (ctx) {
        return ScreenHome();
      }));
    }
  }
}
