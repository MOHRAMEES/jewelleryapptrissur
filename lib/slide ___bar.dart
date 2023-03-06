// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:get/get.dart';
import 'package:jewelleryapptrissur/Bottom__navigator__bar.dart';
import 'package:jewelleryapptrissur/SecondPage.dart';

class SlideBar extends StatefulWidget {
  const SlideBar({super.key});

  @override
  State<SlideBar> createState() => _SlideBarState();
}

class _SlideBarState extends State<SlideBar> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Learning'),
        centerTitle: true,
        leading: IconButton(onPressed: () {}, icon: Icon(Icons.home)),
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.search)),
          IconButton(onPressed: () {}, icon: Icon(Icons.more_vert_outlined))
        ],
      ),
      drawer: Drawer(
        child: ListView(
          // ignore: prefer_const_literals_to_create_immutables
          children: [
            UserAccountsDrawerHeader(
              accountName: Text("ramees"),
              accountEmail: Text("ramees711@gmail.com"),
              currentAccountPicture: CircleAvatar(
                backgroundImage: AssetImage('img/se.jpg'),
                backgroundColor: Colors.white,
              ),
            ),
            ListTile(
              leading: Icon(
                Icons.person,
                color: Colors.black,
              ),
              title: Text(
                'profile',
                style: TextStyle(fontSize: 18, color: Colors.black),
              ),
              onTap: () {
                Get.to(SecondPage2());
              },
            ),
            ListTile(
              leading: Icon(
                Icons.person,
                color: Colors.black,
              ),
              title: Text(
                'cart page',
                style: TextStyle(fontSize: 18, color: Colors.black),
              ),
              onTap: () {
                Get.to(HomePage22());
              },
            ),
            ListTile(
              leading: Icon(
                Icons.person,
                color: Colors.black,
              ),
              title: Text(
                'sign out',
                style: TextStyle(fontSize: 18, color: Colors.black),
              ),
              onTap: () {},
            ),
          ],
        ),
      ),
      body: null,
    );
  }
}
