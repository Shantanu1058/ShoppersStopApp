import 'package:flutter/material.dart';

class UserProfileScreen extends StatelessWidget {
  const UserProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.white,
          iconTheme: IconThemeData(color: Colors.black),
        ),
        body: Padding(
            padding: EdgeInsets.symmetric(horizontal: 10, vertical: 50),
            child: ListView(
              children: <Widget>[
                Container(
                  height: 190,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          fit: BoxFit.contain,
                          image: NetworkImage(
                              "https://images.pexels.com/photos/220453/pexels-photo-220453.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500")),
                      shape: BoxShape.circle,
                      border: Border.all(color: Colors.white)),
                ),
                Container(
                    alignment: Alignment.center,
                    padding: EdgeInsets.all(10),
                    child: Text(
                      'Hello  User',
                      style: TextStyle(fontSize: 20),
                    )),
                Container(
                  child: Text("First Name"),
                ),
                Container(
                  padding: EdgeInsets.all(10),
                  child: TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Enter Your Email',
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.fromLTRB(10, 10, 10, 0),
                  child: TextField(
                    obscureText: true,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Create Password',
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.fromLTRB(10, 10, 10, 0),
                  child: TextField(
                    obscureText: true,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Confirm Your Password',
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.black),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    height: 50,
                    padding: EdgeInsets.symmetric(horizontal: 70),
                    child: IconButton(
                      icon: Text(
                        'SignUp',
                        style: TextStyle(color: Colors.black),
                      ),
                      onPressed: () {},
                    )),
                Container(
                    child: Row(
                  children: <Widget>[
                    Text('Already have account?'),
                    TextButton(
                      child: Text(
                        'Sign in',
                        style: TextStyle(fontSize: 20, color: Colors.black),
                      ),
                      onPressed: () {},
                    )
                  ],
                  mainAxisAlignment: MainAxisAlignment.center,
                ))
              ],
            )));
  }
}
