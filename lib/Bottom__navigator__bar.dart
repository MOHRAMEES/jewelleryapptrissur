// ignore_for_file: unused_import, library_private_types_in_public_api, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:jewelleryapptrissur/Appbutton.dart';
import 'package:jewelleryapptrissur/Cart__page.dart';
import 'package:jewelleryapptrissur/Homepage.dart';
import 'package:jewelleryapptrissur/SecondPage.dart';
import 'package:jewelleryapptrissur/TexrField__page.dart';
import 'package:jewelleryapptrissur/bradile_collection.dart';
import 'package:jewelleryapptrissur/cart__exaple.dart';
import 'package:jewelleryapptrissur/gridview.dart';

class HomePage22 extends StatefulWidget {
  const HomePage22({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage22> {
  int pageIndex = 0;

  final pages = [Homepage(), FieldPage(), Cardpage(), SecondPage2()];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffC4DFCB),
      body: pages[pageIndex],
      bottomNavigationBar: buildMyNavBar(context),
    );
  }

  Container buildMyNavBar(BuildContext context) {
    return Container(
      height: 60,
      decoration: BoxDecoration(
        color: Colors.grey.shade900,
        // color: Theme.of(context).primaryColor,
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          IconButton(
            enableFeedback: false,
            onPressed: () {
              setState(() {
                pageIndex = 0;
              });
            },
            icon: pageIndex == 0
                ? const Icon(
                    Icons.home_filled,
                    color: Colors.white,
                    size: 35,
                  )
                : const Icon(
                    Icons.home_outlined,
                    color: Colors.white,
                    size: 35,
                  ),
          ),
          IconButton(
            enableFeedback: false,
            onPressed: () {
              setState(() {
                pageIndex = 1;
              });
            },
            icon: pageIndex == 1
                ? const Icon(
                    Icons.search_off_outlined,
                    color: Colors.white,
                    size: 35,
                  )
                : const Icon(
                    Icons.search,
                    color: Colors.white,
                    size: 35,
                  ),
          ),
          IconButton(
            enableFeedback: false,
            onPressed: () {
              setState(() {
                pageIndex = 2;
              });
            },
            icon: pageIndex == 2
                ? const Icon(
                    Icons.card_travel,
                    color: Colors.white,
                    size: 35,
                  )
                : const Icon(
                    Icons.card_travel_outlined,
                    color: Colors.white,
                    size: 35,
                  ),
          ),
          IconButton(
            enableFeedback: false,
            onPressed: () {
              setState(() {
                pageIndex = 3;
              });
            },
            icon: pageIndex == 3
                ? const Icon(
                    Icons.person,
                    color: Colors.white,
                    size: 35,
                  )
                : const Icon(
                    Icons.person_outline,
                    color: Colors.white,
                    size: 35,
                  ),
          ),
        ],
      ),
    );
  }
}
