// ignore_for_file: prefer_const_constructors, sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:jewelleryapptrissur/Homepage.dart';
import 'package:jewelleryapptrissur/final__page.dart';

class Buynow extends StatefulWidget {
  const Buynow({super.key});

  @override
  State<Buynow> createState() => _BuynowState();
}

class _BuynowState extends State<Buynow> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(
            onPressed: () {
              Get.to(Final());
            },
            icon: Icon(
              Icons.arrow_back_ios_new,
              color: Colors.black,
            )),
        elevation: 0,
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
                    // hotelpack(
                    //     imagee: "img/ring4.jpg",
                    //     text1: "crown plaza",
                    //     text2: "Tradistional cut Golden Bangle",
                    //     text3: "\$1,600 Flat 5% Off"),
                    // Gap(400),
                    // Container(
                    //   height: 60,
                    //   width: 250,
                    //   decoration: BoxDecoration(
                    //     borderRadius: BorderRadius.circular(6),
                    //     color: Colors.purple,
                    //   ),
                    //   child: Center(
                    //       child: const Text(
                    //     "Checkout",
                    //     style: TextStyle(color: Colors.white, fontSize: 25),
                    //   )),
                    // ),
                    Gap(350),
                    // ignore: prefer_const_constructors
                    Padding(
                      padding: const EdgeInsets.only(right: 100),
                      // ignore: prefer_const_constructors
                      child: Text(
                        "Order Summery",
                        style: TextStyle(fontSize: 20, color: Colors.grey),
                      ),
                    ),
                    const Gap(10),
                    const Divider(
                      thickness: 3,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 10),
                      child: Row(
                        // ignore: prefer_const_literals_to_create_immutables
                        children: [
                          Text(
                            "Tradistional Cut Golden",
                            style: TextStyle(fontSize: 15),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 25),
                            child: Text('₹ 1,600'),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 25),
                            child: Text('x2'),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 25),
                            child: Text('₹ 3,200'),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 300),
                      child: Text('Bangle'),
                    )
                  ],
                ),
              ),
            ),
            Gap(20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              // ignore: prefer_const_literals_to_create_immutables
              children: [
                Text('Total:'),
                Padding(
                  padding: const EdgeInsets.only(right: 20),
                  child: Text(
                    '₹ 3,400',
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),
            Gap(30),
            InkWell(
              onTap: () {
                Get.to(Homepage());
              },
              child: Container(
                height: 60,
                width: 250,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(6),
                  color: Colors.purple,
                ),
                child: Center(
                    child: const Text(
                  "Confirm Checkout",
                  style: TextStyle(color: Colors.white, fontSize: 25),
                )),
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
              BoxShadow(color: Colors.grey, blurRadius: 8, offset: Offset(1, 2))
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
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            TextButton(
                                onPressed: () {},
                                child: Text(
                                  '_',
                                  style: TextStyle(fontSize: 30),
                                )),
                            TextButton(
                                onPressed: () {},
                                child: Text(
                                  '1',
                                  style: TextStyle(fontSize: 20),
                                )),
                            TextButton(
                                onPressed: () {},
                                child: Text(
                                  '+',
                                  style: TextStyle(fontSize: 30),
                                )),
                          ],
                        ),
                      ],
                    ),
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
