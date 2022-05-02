import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'screen_login.dart';

class ScreenDrawer extends StatelessWidget {
  const ScreenDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: SingleChildScrollView(
        child: Column(
          children: [buildHeader(context), buildItems(context)],
        ),
      ),
    );
  }

  buildHeader(BuildContext context) => Container(
        color: Colors.green,
        padding: const EdgeInsets.only(top: 80, bottom: 30),
        child: Column(
          children: const [
            CircleAvatar(
              backgroundImage: AssetImage('assets/images/avtar.jpg'),
              radius: 70,
            ),
            SizedBox(
              height: 15,
              width: 400,
            ),
            Text(
              'Sanjay D',
              style: TextStyle(fontSize: 30, color: Colors.white),
            )
          ],
        ),
      );
  buildItems(BuildContext context) => Column(
        children: [
          const ListTile(
            title: Text(
              'Home',
              style: TextStyle(fontSize: 20),
            ),
            leading: Icon(
              Icons.home,
              size: 30,
            ),
          ),
          const ListTile(
            title: Text(
              'Favourites',
              style: TextStyle(fontSize: 20),
            ),
            leading: Icon(
              Icons.heart_broken,
              size: 30,
            ),
          ),
          const ListTile(
            title: Text(
              'Cart',
              style: TextStyle(fontSize: 20),
            ),
            leading: Icon(
              Icons.shopping_basket,
              size: 30,
            ),
          ),
          ListTile(
            title: const Text(
              'Signout',
              style: TextStyle(fontSize: 20),
            ),
            leading: const Icon(
              Icons.exit_to_app,
              size: 30,
            ),
            onTap: () async {
              final _sharedprfns = await SharedPreferences.getInstance();
              _sharedprfns.clear();

              Navigator.of(context).pushAndRemoveUntil(
                  MaterialPageRoute(builder: (ctx) {
                return ScreenLogin();
              }), (route) => false);
            },
          )
        ],
      );
}
