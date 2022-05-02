import 'package:flutter/material.dart';
import 'package:login/main.dart';
import 'package:login/screen_home.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ScreenLogin extends StatelessWidget {
  ScreenLogin({Key? key}) : super(key: key);
  final _usernamecontroller = TextEditingController();
  final _passwordcontroller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // resizeToAvoidBottomInset: false,
      body: SafeArea(
          child: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 50),
              child: Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(left: 20),
                      child: Text(
                        'Hello',
                        style: TextStyle(
                            fontSize: 70, fontWeight: FontWeight.bold),
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(
                        left: 20,
                      ),
                      child: Text(
                        'There',
                        style: TextStyle(
                            fontSize: 70, fontWeight: FontWeight.bold),
                      ),
                    ),
                    Padding(
                      padding:
                          const EdgeInsets.only(top: 35, right: 30, left: 30),
                      child: Container(
                        child: Column(
                          children: [
                            TextField(
                              controller: _usernamecontroller,
                              decoration: InputDecoration(
                                  hintText: 'Username',
                                  border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(30))),
                            ),
                            const SizedBox(
                              height: 25,
                            ),
                            TextField(
                              controller: _passwordcontroller,
                              obscureText: true,
                              decoration: InputDecoration(
                                  hintText: 'Password',
                                  border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(30))),
                            ),
                            const SizedBox(
                              height: 30,
                            ),
                            ElevatedButton(
                                onPressed: () {
                                  checkLogin(context);
                                },
                                child: const Text(
                                  'Log in',
                                  style: TextStyle(fontSize: 20),
                                ),
                                style: ElevatedButton.styleFrom(
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(20)),
                                    minimumSize: const Size(150, 40))),
                            TextButton(
                                onPressed: () {},
                                child: const Text(
                                  'Forgot Password?',
                                  style: TextStyle(
                                      color: Color.fromARGB(255, 32, 133, 35)),
                                ))
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      )),
    );
  }

  void checkLogin(BuildContext ctx) async {
    const _defusername = 'sanjay023';
    const _defpassword = 'Sanjay';
    final _username = _usernamecontroller.text;
    final _password = _passwordcontroller.text;
    FocusManager.instance.primaryFocus?.unfocus();
    if (_username == _defusername && _password == _defpassword) {
      final _sharedprfns = await SharedPreferences.getInstance();
      await _sharedprfns.setBool(SAVE_KEY, true);

      Navigator.of(ctx).pushReplacement(MaterialPageRoute(builder: (ctx) {
        return ScreenHome();
      }));
    } else {
      _usernamecontroller.clear();
      _passwordcontroller.clear();
      ScaffoldMessenger.of(ctx).showSnackBar(
        const SnackBar(
          content: Text('Username or Password does not match'),
          backgroundColor: Colors.red,
        ),
      );
    }
  }
}
