import 'dart:ui';

import 'package:flutter/material.dart';

class MyDrower extends StatefulWidget {
  const MyDrower({Key? key}) : super(key: key);

  @override
  State<MyDrower> createState() => _MyDrowerState();
}

class _MyDrowerState extends State<MyDrower> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Colors.white,
      child: ListView(
        children: [
          Container(
            padding: EdgeInsets.symmetric(
              horizontal: 10,
              vertical: 30,
            ),
            child: Column(
              children: [
                CircleAvatar(
                  backgroundColor: Colors.pink,
                  child: Icon(
                    Icons.face,
                    size: 80,
                    color: Colors.white,
                  ),
                  radius: 60,
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  "User Name",
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 2),
            child: Column(
              children: [
                myDvider(),
                ListTile(
                  leading: Icon(
                    Icons.home_rounded,
                    color: Colors.black,
                  ),
                  title: Text(
                    "Home",
                    style: TextStyle(color: Colors.black, fontSize: 20),
                  ),
                  visualDensity: VisualDensity(horizontal: -1, vertical: -1),
                  onTap: () {},
                ),
                myDvider(),
                ListTile(
                  leading: Icon(
                    Icons.sell_rounded,
                    color: Colors.black,
                  ),
                  title: Text(
                    "My Orders",
                    style: TextStyle(color: Colors.black, fontSize: 20),
                  ),
                  visualDensity: VisualDensity(horizontal: -1, vertical: -1),
                  onTap: () {},
                ),
                myDvider(),
                ListTile(
                  leading: Icon(
                    Icons.local_shipping_rounded,
                    color: Colors.black,
                  ),
                  title: Text(
                    "Not Yet Recieved",
                    style: TextStyle(color: Colors.black, fontSize: 20),
                  ),
                  visualDensity: VisualDensity(horizontal: -1, vertical: -1),
                  onTap: () {},
                ),
                myDvider(),
                ListTile(
                  leading: Icon(
                    Icons.work_history_rounded,
                    color: Colors.black,
                  ),
                  title: Text(
                    "History",
                    style: TextStyle(color: Colors.black, fontSize: 20),
                  ),
                  visualDensity: VisualDensity(horizontal: -1, vertical: -1),
                  onTap: () {},
                ),
                myDvider(),
                ListTile(
                  leading: Icon(
                    Icons.search_rounded,
                    color: Colors.black,
                  ),
                  title: Text(
                    "Search",
                    style: TextStyle(color: Colors.black, fontSize: 20),
                  ),
                  visualDensity: VisualDensity(horizontal: -1, vertical: -1),
                  onTap: () {},
                ),
                myDvider(),
                ListTile(
                  leading: Icon(
                    Icons.logout_rounded,
                    color: Colors.black,
                  ),
                  title: Text(
                    "Sign Out",
                    style: TextStyle(color: Colors.black, fontSize: 20),
                  ),
                  visualDensity: VisualDensity(horizontal: -1, vertical: -1),
                  onTap: () {},
                ),
                myDvider(),
              ],
            ),
          )
        ],
      ),
    );
  }

  Divider myDvider() {
    return const Divider(
      height: 1,
      color: Colors.black,
      thickness: 1,
    );
  }
}
