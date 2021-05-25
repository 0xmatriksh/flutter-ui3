import 'package:flutter/material.dart';
// import 'package:ui_layout2/pages/myprofile.dart';
// import 'package:ui_layout2/pages/HomePage.dart';
import 'package:ui_layout2/pages/profile.dart';
// import 'package:ui_layout2/pages/tabbar.dart';

void main() {
  return runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyProfile(),
      debugShowCheckedModeBanner: false,
    );
  }
}
