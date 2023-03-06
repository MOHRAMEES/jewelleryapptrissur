// ignore_for_file: unnecessary_const, unused_import, prefer_const_constructors, sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:jewelleryapptrissur/Homepage.dart';
import 'package:jewelleryapptrissur/TexrField__page.dart';
import 'package:jewelleryapptrissur/final__page.dart';
import 'package:jewelleryapptrissur/gridview.dart';
import 'package:jewelleryapptrissur/listviewbuilder.dart';

class SecondPage2 extends StatelessWidget {
  const SecondPage2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                Container(
                  height: 155,
                  child: Column(
                    children: [
                      Container(
                        height: 150,
                        width: double.infinity,
                        decoration: const BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage("img/bangle1.jpg"),
                                fit: BoxFit.fill)),
                        child: Container(
                          // margin: EdgeInsets.only(top: 20, left: 40),
                          child: Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(bottom: 80),
                                child: IconButton(
                                    onPressed: () {
                                      Get.to(Homepage());
                                    },
                                    icon: const Icon(
                                      Icons.arrow_back_ios_new,
                                      color: Colors.white,
                                    )),
                              ),
                              Column(
                                children: [
                                  // ignore: prefer_const_constructors
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        left: 100, top: 40),
                                    child: const Text("Best Offer On Bangles",
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 18,
                                            fontWeight: FontWeight.bold)),
                                  ),

                                  const Padding(
                                    padding: const EdgeInsets.only(left: 100),
                                    // ignore: unnecessary_const
                                    child: const Text(
                                        "15+designs Starts From \$ 26400",
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 12,
                                            fontWeight: FontWeight.bold)),
                                  ),

                                  Padding(
                                    padding: const EdgeInsets.only(left: 190),
                                    child: ElevatedButton(
                                        onPressed: () {},
                                        style: ElevatedButton.styleFrom(
                                            backgroundColor: Colors.white),
                                        child: const Text(
                                          "Up to 50% off",
                                          style: TextStyle(color: Colors.black),
                                        )),
                                  )
                                ],
                              )
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
            InkWell(
              onDoubleTap: () {
                Get.to(FieldPage());
              },
              child: Container(
                padding: EdgeInsets.all(10.0),
                child: TextField(
                  decoration: InputDecoration(
                    hintText: "Search",
                    prefix: Icon(Icons.search),
                    border: OutlineInputBorder(),
                  ),
                ),
              ),
            ),
            Column(
              children: [
                Container(
                  height: 350,
                  // color:  Colors.red,
                  child: GridB(),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
