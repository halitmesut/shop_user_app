import 'package:flutter/material.dart';
import 'package:shop_user_app/authScreens/login_tab_page.dart';
import 'package:shop_user_app/authScreens/registration_tab_page.dart';

class AuthScreen extends StatefulWidget {
  const AuthScreen({Key? key}) : super(key: key);

  @override
  State<AuthScreen> createState() => _AuthScreenState();
}

class _AuthScreenState extends State<AuthScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.pink,
          title: Text("User App"),
          centerTitle: true,
          elevation: 2,
          bottom: const TabBar(
            indicatorColor: Colors.white,
            indicatorWeight: 3,
            labelStyle: TextStyle(fontSize: 15),
            tabs: [
              Tab(
                text: "Login",
                height: 40,
              ),
              Tab(
                text: "Registration",
                height: 20,
              )
            ],
          ),
        ),
        body: TabBarView(
          children: [LoginTabPage(), RegistrationTabPage()],
        ),
      ),
    );
  }
}
