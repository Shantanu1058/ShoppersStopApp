import 'package:flutter/material.dart';
import 'package:shoppers_stop_app/screens/sign_in.dart';

class SignUp extends StatefulWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  TextEditingController nameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController cpasswordController = TextEditingController();

  @override
  void dispose() {
    nameController.dispose();
    passwordController.dispose();
    cpasswordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
            padding: EdgeInsets.symmetric(horizontal: 10, vertical: 50),
            child: ListView(
              children: <Widget>[
                Row(
                  children: [
                    Container(
                      height: MediaQuery.of(context).size.height * 0.1,
                      width: MediaQuery.of(context).size.width * 0.2,
                      decoration: BoxDecoration(shape: BoxShape.circle),
                      child: Image.asset('assets/GIF/GIF-2.gif'),
                    ),
                    Container(
                        alignment: Alignment.center,
                        padding: EdgeInsets.all(10),
                        child: Text(
                          'Shoppers Stop',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                              fontFamily: 'Roboto-Bold',
                              fontSize: 30),
                        )),
                  ],
                ),
                Container(
                    alignment: Alignment.center,
                    padding: EdgeInsets.all(10),
                    child: Text(
                      'Sign Up',
                      style: TextStyle(fontSize: 20),
                    )),
                Container(
                  padding: EdgeInsets.all(10),
                  child: TextField(
                    controller: nameController,
                    decoration: InputDecoration(
                      hoverColor: Colors.black,
                      focusColor: Colors.black,
                      border: OutlineInputBorder(),
                      labelText: 'Enter Your UserName',
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(10),
                  child: TextField(
                    controller: nameController,
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
                    controller: passwordController,
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
                    controller: passwordController,
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
                      onPressed: () {
                        print(nameController.text);
                        print(passwordController.text);
                      },
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
                      onPressed: () {
                        Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                              builder: (context) => SignIn(),
                            ));
                      },
                    )
                  ],
                  mainAxisAlignment: MainAxisAlignment.center,
                ))
              ],
            )));
  }
}
