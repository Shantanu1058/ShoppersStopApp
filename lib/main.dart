import 'package:flutter/material.dart';
import 'package:shoppers_stop_app/screens/customDrawer.dart';
import 'package:shoppers_stop_app/screens/home_screen.dart';
import 'package:shoppers_stop_app/screens/user_profile_screen.dart';
// import 'package:shoppers_stop_app/screens/sign_in.dart';
// import 'package:shoppers_stop_app/screens/sign_up.dart';
// import 'package:shoppers_stop_app/screens/search_screen.dart';
// import 'package:shoppers_stop_app/screens/orders_screen.dart';
// import 'package:shoppers_stop_app/screens/item_details_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Shoppers Stop',
      theme: ThemeData(primarySwatch: Colors.blue, fontFamily: 'Roboto-Bold'),
      home: HomeScreen(),
    );
  }
}
