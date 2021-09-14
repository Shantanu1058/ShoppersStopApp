import 'package:flutter/material.dart';
import 'package:shoppers_stop_app/screens/sign_in.dart';
import 'package:shoppers_stop_app/screens/user_profile_screen.dart';

class MainDrawer extends StatelessWidget {
  const MainDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            Container(
              decoration:
                  BoxDecoration(border: Border.all(color: Colors.black)),
              height: MediaQuery.of(context).size.height * 0.15,
              child: DrawerHeader(
                decoration: BoxDecoration(
                  color: Colors.white,
                ),
                child: Container(
                    padding: EdgeInsets.symmetric(vertical: 10),
                    child: Text(
                      'Hello User!',
                      style: TextStyle(fontSize: 30),
                    )),
              ),
            ),
            ListTile(
              leading: Image.asset('assets/icons/user_profile.png'),
              title: Text('Profile'),
              onTap: () {
                Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                      builder: (context) => UserProfileScreen(),
                    ));
              },
            ),
            ListTile(
              leading: Image.asset('assets/icons/logout.png'),
              title: Text('Logout'),
              onTap: () {
                Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                      builder: (context) => SignIn(),
                    ));
              },
            ),
          ],
        ),
      ),
    );
  }
}
