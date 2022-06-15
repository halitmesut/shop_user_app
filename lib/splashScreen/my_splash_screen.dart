import 'dart:async';

import 'package:flutter/material.dart';
import 'package:shop_user_app/mainScrrens/home_screen.dart';

class MySplashScreen extends StatefulWidget {
  @override
  State<MySplashScreen> createState() => _MySplashScreenState();
}

class _MySplashScreenState extends State<MySplashScreen> {
  splashScreenTimer() {
    Timer(const Duration(seconds: 4), () {
      Navigator.push(context,
          MaterialPageRoute(builder: ((context) => const HomeScreen())));
    });
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    splashScreenTimer();
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Center(child: Image.asset("assets/splash1.png")),
      ),
    );
  }
}
