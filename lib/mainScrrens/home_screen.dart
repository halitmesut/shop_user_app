import 'package:flutter/material.dart';
import 'package:shop_user_app/widgets/my_drower.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: MyDrower(),
      appBar: AppBar(
        title: Text("User App", style: TextStyle(color: Colors.white)),
        centerTitle: true,
        backgroundColor: Colors.pink,
        elevation: 0,
      ),
    );
  }
}
