// ignore_for_file: prefer_const_constructors, unused_import, sized_box_for_whitespace, camel_case_types, use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:jewelleryapptrissur/Homepage.dart';

class WishList extends StatefulWidget {
  const WishList({super.key});

  @override
  State<WishList> createState() => _CardpageState();
}

class _CardpageState extends State<WishList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title:const Text(
          "Cart",
          style: TextStyle(color: Colors.black),
        ),
        leading: IconButton(
            onPressed: () {
              Get.back();
            },
            icon:const Icon(
              Icons.arrow_back_ios,
              color: Colors.black,
            )),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              width: double.infinity,
              child: SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    hotelpack(
                        imagee: "img/ring4.jpg",
                        text1: "Women|Bangle",
                        text2: "Tradistional cut Golden Bangle",
                        text3: "\$1,600 Flat 5% Off"),
                    hotelpack(
                        imagee: "img/ring4.jpg",
                        text1: "crown plaza",
                        text2: "Tradistional cut Golden Bangle",
                        text3: "\$1,600 Flat 5% Off"),
                    // Gap(300),
                    // InkWell(
                    //   onTap: () {
                    //     Get.to(Homepage());
                    //   },
                    //   child: Container(
                    //     height: 60,
                    //     width: 250,
                    //     decoration: BoxDecoration(
                    //       borderRadius: BorderRadius.circular(6),
                    //       color: Colors.purple,
                    //     ),
                    //     child: Center(
                    //         child: const Text(
                    //       "Checkout",
                    //       style: TextStyle(color: Colors.white, fontSize: 25),
                    //     )),
                    //   ),
                    // ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class hotelpack extends StatelessWidget {
  final String imagee;
  final String text1;
  final String text2;
  final String text3;

  // ignore: prefer_const_constructors_in_immutables
  hotelpack({
    required this.imagee,
    required this.text1,
    required this.text2,
    required this.text3,
  });
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 15, left: 20, right: 10),
      child: Container(
        decoration: BoxDecoration(
            color: Colors.grey[200],
            borderRadius: BorderRadius.circular(10),
            // ignore: prefer_const_literals_to_create_immutables
            boxShadow: [
           const   BoxShadow(color: Colors.grey, blurRadius: 8, offset: Offset(1, 2))
            ]),
        child: Stack(children: [
          Row(
            children: [
              ClipRRect(
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(5.0),
                  topRight: Radius.circular(5.0),
                  bottomLeft: Radius.circular(5.0),
                  bottomRight: Radius.circular(5.0),
                ),
                child: Container(
                  height: 120,
                  width: 120,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage(imagee), fit: BoxFit.fill),
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            text1,
                            style: TextStyle(fontSize: 15, color: Colors.black),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            text2,
                            style: TextStyle(fontSize: 12, color: Colors.grey),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            text3,
                            style: TextStyle(
                                fontSize: 15,
                                color: Color.fromARGB(255, 9, 110, 192)),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            crossAxisAlignment: CrossAxisAlignment.end,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 140),
                            child: IconButton(
                                onPressed: () {},
                                icon: Icon(
                                  Icons.favorite,
                                  color: Colors.black,
                                )),
                          )
                        ]),
                  ),
                ],
              )
            ],
          ),
        ]),
      ),
    );
  }
}
