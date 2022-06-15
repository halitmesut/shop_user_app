import 'package:flutter/material.dart';
import 'package:shop_user_app/mainScrrens/home_screen.dart';
import 'package:shop_user_app/splashScreen/my_splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Users App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      debugShowCheckedModeBanner: false,
      home: MySplashScreen(),
    );
  }
}
