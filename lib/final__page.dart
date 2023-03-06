// ignore_for_file: prefer_const_constructors, unnecessary_const, unused_import

import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:jewelleryapptrissur/Appbutton.dart';
import 'package:jewelleryapptrissur/Buy__now__page.dart';
import 'package:jewelleryapptrissur/Cart__page.dart';
import 'package:jewelleryapptrissur/Homepage.dart';
import 'package:jewelleryapptrissur/SecondPage.dart';

class Final extends StatefulWidget {
  const Final({super.key});

  @override
  State<Final> createState() => _FinalState();
}

class _FinalState extends State<Final> {
  int selectedindex = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
            child: Column(children: [
      ClipRRect(
        borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(13), bottomRight: Radius.circular(13)),
        child: Container(
            height: 300,
            width: 400,
            decoration: const BoxDecoration(
                image: DecorationImage(image: AssetImage('img/ring4.jpg'))),
            child: Padding(
              padding: const EdgeInsets.only(right: 10, bottom: 200),
              child: Row(
                children: [
                  IconButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const SecondPage2()));
                      },
                      icon: const Icon(
                        Icons.arrow_back,
                        color: Colors.white,
                        size: 40,
                      )),
                  // ignore: prefer_const_constructors
                  Padding(
                    padding: const EdgeInsets.only(left: 230),
                    child: const Icon(
                      Icons.favorite_border,
                      size: 30,
                      color: Colors.white,
                    ),
                  ),
                  const Icon(
                    Icons.share,
                    size: 30,
                    color: Colors.white,
                  ),
                ],
              ),
            )),
      ),
      Padding(
        padding: const EdgeInsets.only(top: 10, right: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // ignore: prefer_const_constructors
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Text('WOMEN | BANGLE'),
            ),
            const Gap(10),
            // ignore: prefer_const_constructors
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: const Text(
                'ADCOOOOOO2458',
                style: TextStyle(color: Colors.grey),
              ),
            ),
            const Gap(10),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              // ignore: prefer_const_literals_to_create_immutables
              children: [
                const Text(
                  'Tradistional cut golden\nbangle ',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
                ),
              ],
            )
          ],
        ),
      ),
      const Gap(10),
      // ignore: prefer_const_constructors
      Padding(
        padding: const EdgeInsets.only(right: 100),
        child: Row(
          // ignore: prefer_const_literals_to_create_immutables
          children: [
            const Text(
              '\$ 11,003',
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            ),
            Text(
              'Inclusive off all Taxes',
              style: TextStyle(color: Colors.grey),
            )
          ],
        ),
      ),
      Gap(10),
      Row(
        children: [
          Text(
            'choose size',
            style: TextStyle(fontSize: 20),
          ),
          Wrap(
            children: List.generate(5, (index) {
              return InkWell(
                onTap: () {
                  setState(() {
                    selectedindex = index;
                  });
                },
                child: Column(
                  children: [
                    Container(
                        margin: EdgeInsets.only(right: 10),
                        child: AppButtons(
                          color: selectedindex == index
                              ? Colors.white
                              : Colors.black,
                          backgroundColor: selectedindex == index
                              ? Colors.black
                              : Colors.white,
                          size: 50,
                          borderColor: selectedindex == index
                              ? Colors.white
                              : Colors.black,
                          text: (index + 10).toString(),
                        )),
                  ],
                ),
              );
            }),
          ),
        ],
      ),
      Gap(15),
      Padding(
        padding: const EdgeInsets.only(right: 200),
        child: Row(
          // ignore: prefer_const_literals_to_create_immutables
          children: [
            const Text("Availability:In Stock "),
          ],
        ),
      ),
      Gap(25),
      Row(
        children: [
          Container(
            height: 30,
            width: 30,
            decoration: BoxDecoration(
                color: Colors.transparent,
                image: DecorationImage(
                    image: AssetImage("img/biss-removebg-preview.png"),
                    fit: BoxFit.cover)),
          ),
          Gap(30),
          Container(
            height: 30,
            width: 30,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(
                      "img/igicertificate.png",
                    ),
                    fit: BoxFit.cover)),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 50),
            child: Text(
              "100% credited by\nindarnational standerts",
              style: TextStyle(color: Colors.grey, fontWeight: FontWeight.bold),
            ),
          )
        ],
      ),
      Gap(15),
      const Divider(
        thickness: 5,
        indent: 1,
      ),
      const Gap(15),
      const Padding(
        padding: const EdgeInsets.only(right: 200, left: 20),
        child: Text(
          'Product Details',
          style: TextStyle(color: Colors.purple, fontSize: 20),
        ),
      ),
      Gap(10),
      Padding(
        padding: const EdgeInsets.only(right: 60),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(right: 120),
              child: const Text(
                'Basic information',
                style: TextStyle(
                    fontSize: 15,
                    color: Colors.black,
                    fontWeight: FontWeight.bold),
              ),
            ),
            Gap(8),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              // ignore: prefer_const_literals_to_create_immutables
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 30),
                  child: const Text(
                    'Product Type',
                    style: TextStyle(fontWeight: FontWeight.w400),
                  ),
                ),
                const Padding(
                  padding: const EdgeInsets.only(left: 130),
                  child: const Text('Ring'),
                ),
              ],
            ),
          ],
        ),
      ),
      Gap(10),
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        // ignore: prefer_const_literals_to_create_immutables
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 30),
            child: Text(
              "Brands Mine",
              style: TextStyle(fontWeight: FontWeight.w400),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 60),
            child: Text("Mine"),
          )
        ],
      ),
      Gap(10),
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        // ignore: prefer_const_literals_to_create_immutables
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 30),
            child: Text(
              "Item package quntity",
              style: TextStyle(fontWeight: FontWeight.w400),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 80),
            child: Text("1"),
          )
        ],
      ),
      Gap(10),
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        // ignore: prefer_const_literals_to_create_immutables
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 30),
            child: Text(
              "Gender",
              style: TextStyle(fontWeight: FontWeight.w400),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
              right: 55,
            ),
            child: Text("Women"),
          )
        ],
      ),
      Gap(10),
      Padding(
        padding: const EdgeInsets.only(right: 20),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(right: 160),
              child: const Text(
                'Metal information',
                style: TextStyle(
                    fontSize: 15,
                    color: Colors.black,
                    fontWeight: FontWeight.bold),
              ),
            ),
            Gap(10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              // ignore: prefer_const_literals_to_create_immutables
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 30),
                  child: Text(
                    "Gold Purity",
                    style: TextStyle(fontWeight: FontWeight.w400),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 65, right: 25),
                  child: Text("18KT(750)"),
                )
              ],
            ),
            Gap(10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              // ignore: prefer_const_literals_to_create_immutables
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 30),
                  child: const Text(
                    "Metal color",
                    style: TextStyle(fontWeight: FontWeight.w400),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 65, right: 60),
                  child: Text("Gold"),
                )
              ],
            ),
            Gap(10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              // ignore: prefer_const_literals_to_create_immutables
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 30),
                  child: const Text(
                    "Gross Weight( g )",
                    style: TextStyle(fontWeight: FontWeight.w400),
                  ),
                ),
              ],
            ),
            Gap(10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              // ignore: prefer_const_literals_to_create_immutables
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 30),
                  child: Text(
                    "Net Weight( g )",
                    style: TextStyle(fontWeight: FontWeight.w400),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 65, right: 45),
                  child: const Text("1.2480"),
                )
              ],
            ),
            Gap(10),
            const Divider(
              thickness: 5,
              indent: 50,
            ),
            Gap(1),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: InkWell(
                    onTap: () {
                      Get.to((Cardpage()));
                    },
                    child: Container(
                      height: 45,
                      width: 150,
                      decoration: BoxDecoration(
                          // ignore: prefer_const_literals_to_create_immutables
                          boxShadow: [
                            const BoxShadow(blurRadius: 2),
                          ],
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(6)),
                      child: Center(
                          child: Text(
                        "Add to cart",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      )),
                    ),
                  ),
                ),
                Gap(5),
                InkWell(
                  onTap: () {
                    Get.to(Buynow());
                  },
                  child: Container(
                    height: 45,
                    width: 150,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(6),
                      color: Colors.purple,
                    ),
                    child: Center(
                        child: Text(
                      "Buy now",
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    )),
                  ),
                ),
              ],
            ),
            Container(
              height: 10,
              width: 10,
              color: Colors.white,
            )
          ],
        ),
      ),
    ])));
  }
}
