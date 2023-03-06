// ignore_for_file: file_names, prefer_const_constructors, unused_import, prefer_interpolation_to_compose_strings, sized_box_for_whitespace, duplicate_ignore, avoid_unnecessary_containers, unnecessary_const

import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:jewelleryapptrissur/SecondPage.dart';
import 'package:jewelleryapptrissur/bradile_collection.dart';
import 'package:jewelleryapptrissur/final__page.dart';
import 'package:jewelleryapptrissur/gridview.dart';
import 'package:jewelleryapptrissur/shop_by_material_page.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    var images = {
      "bangle.jpg": "Bangle",
      "images.jpg": "Earring ",
      "img1.jpg": "Bracellet",
      "img2.jpg": "kids",
      "img3.jpg": "platinum",
      "img4.jpg": "earing",
    };
    var imagess = {
      "new1.jpg": "Bridal Collection",
      "bangle.jpg": "Costume Design ",
      "img1.jpg": "Traditional Collection",
      "images.jpg": "kids Jewllery",

      //  "immmm.jpg", "img3.jpg", "img1.jpg", "images.jpg"
    };
    var bangles = {
      // "g1.jpeg"
      "images.jpg",
      "img4.jpg",
      "david.jpeg",
      "kids1.jpeg",
      "img2.jpg"
    };
    // List imagess = ["immmm.jpg", "img3.jpg", "img1.jpg", "images.jpg"];
    var Gender = {
      "1girl.jpg"
          "david.jpeg"
          "kids1.jpeg"
    };
    var Rings = {
      // 'Dapper 22 karat yellow gold ring',
      //   'Dapper 22 karat yellow gold ring',
      //   'Dapper 22 karat yellow gold ring'
      'g1.jpeg': 'Dapper 22 karat yellow gold ring',
      'g2.jpg': 'Dapper 22 karat yellow gold ring',
      'g3.jpg': 'Dapper 22 karat yellow gold ring'
    };

    MediaQueryData queryData;
    queryData = MediaQuery.of(context);
    var width = queryData.size.width;
    var height = queryData.size.height;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        leading: const Icon(
          Icons.menu,
          color: Colors.black,
        ),
        actions: const [
          Icon(
            Icons.favorite_border,
            color: Colors.black,
          ),
          Icon(
            Icons.notifications_none,
            color: Colors.black,
          ),
        ],
        elevation: 0,
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
              onTap: () {},
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
              onTap: () {},
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
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.all(10.0),
              child: TextField(
                decoration: InputDecoration(
                  hintText: "Search",
                  suffix: Icon(Icons.search),
                  border: OutlineInputBorder(),
                ),
              ),
            ),
            const Gap(2),
            Container(
              height: 150,
              width: double.maxFinite,
              margin: const EdgeInsets.only(left: 10),
              child: ListView.builder(
                  itemCount: 6,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (_, Index) {
                    return Container(
                      margin: const EdgeInsets.only(right: 15),
                      child: Column(
                        children: [
                          InkWell(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => SecondPage2()));
                            },
                            child: Container(
                              width: 80,
                              height: 80,
                              decoration: BoxDecoration(
                                borderRadius: const BorderRadius.all(
                                    Radius.circular(100)),
                                color: Colors.white,
                                image: DecorationImage(
                                    image: AssetImage(
                                        "img/" + images.keys.elementAt(Index)),
                                    // image: AssetImage("assets/images/" +
                                    //     images.keys.elementAt(Index)),
                                    fit: BoxFit.cover),
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Container(
                            child: Text(
                              images.values.elementAt(Index),
                              style:
                                  const TextStyle(fontWeight: FontWeight.bold),
                            ),

                            //  child: Text(
                            //    text: images.values.elementAt(index),
                            //    color: AppColors.textColor2,
                            //  )
                          ),
                        ],
                      ),
                    );
                  }),
            ),
            Column(
              children: [
                Container(
                  width: double.maxFinite,
                  height: 150,
                  //color: Colors.black,
                  child: PageView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: imagess.length,
                    itemBuilder: (_, index) {
                      return Container(
                        width: double.maxFinite,
                        // height: 200,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage(
                                    "img/" + imagess.keys.elementAt(index)),
                                // AssetImage("assets/img/ " + imagess[index]),
                                fit: BoxFit.fill)),
                        child: Container(
                          margin: const EdgeInsets.only(top: 60, left: 100),
                          child: Row(
                            children: [
                              Gap(5),
                              Column(
                                children: [
                                  Text(imagess.values.elementAt(index),
                                      style: const TextStyle(
                                          color: Colors.white,
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold)),
                                  const Gap(4),
                                  const Padding(
                                      padding:
                                          EdgeInsets.only(left: 210, top: 2)),
                                  ElevatedButton(
                                      onPressed: () {
                                        Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) =>
                                                    SecondPage2()));
                                      },
                                      style: ElevatedButton.styleFrom(
                                          backgroundColor: Colors.white),
                                      child: const Text(
                                        "ShopNow",
                                        style: TextStyle(color: Colors.black),
                                      ))
                                ],
                              )
                            ],
                          ),
                        ),
                      );
                    },
                  ),
                ),
                const Gap(10),
                Container(
                  height: 30,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: List.generate(7, (index) {
                      return Container(
                        width: 10,
                        height: 8,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            color: Colors.black54),
                      );
                    }),
                  ),
                ),
                const Gap(10),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  // ignore: prefer_const_literals_to_create_immutables
                  children: [
                    const Text(
                      "New Arrivels",
                      style: TextStyle(
                          color: Colors.purple,
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    ),
                    const Gap(8),
                    // ignore: prefer_const_constructors
                    const Text("Our latest releases exclusively for you",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 15,
                            fontWeight: FontWeight.bold)),
                  ],
                ),

                // Row(children: [
                //   ListView.builder(itemBuilder: (_, index) {
                //     return Container(
                //       child: Row(

                //       ),
                //     );
                //   })
                // ])
                const Gap(10),

                Container(
                  height: 150,
                  width: double.maxFinite,
                  child: ListView.builder(
                      itemCount: 5,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (_, index) {
                        return InkWell(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => SecondPage2()));
                          },
                          child: Container(
                            margin: const EdgeInsets.only(right: 15),
                            child: Row(
                              children: [
                                Container(
                                  height: 150,
                                  width: 140,
                                  decoration: BoxDecoration(
                                      color: Colors.white,
                                      image: DecorationImage(
                                          image: AssetImage("img/" +
                                              bangles.elementAt(index)),
                                          fit: BoxFit.cover)),
                                )
                              ],
                            ),
                          ),
                        );
                      }),
                ),

                const Gap(40),
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
                              Column(
                                children: [
                                  // ignore: prefer_const_constructors
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        left: 140, top: 40),
                                    child: const Text("Best Offer On Bangles",
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 18,
                                            fontWeight: FontWeight.bold)),
                                  ),
                                  const Gap(8),
                                  const Padding(
                                    padding: const EdgeInsets.only(left: 140),
                                    // ignore: unnecessary_const
                                    child: const Text(
                                        "15+designs Starts From \$ 26400",
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 12,
                                            fontWeight: FontWeight.bold)),
                                  ),
                                  Gap(10),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 190),
                                    child: ElevatedButton(
                                        onPressed: () {
                                          Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                  builder: (context) =>
                                                      Final()));
                                        },
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
                Gap(20),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  // ignore: prefer_const_literals_to_create_immutables
                  children: [
                    const Text(
                      "Shop by Gender",
                      style: TextStyle(
                          color: Colors.purple,
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    ),
                    Gap(8),
                    const Text(
                        "Exclusively Collection for women,children & men",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 15,
                            fontWeight: FontWeight.bold)),
                  ],
                ),

                Gap(10),
                Column(
                  children: [
                    Container(
                      height: 350,
                      // color:  Colors.red,
                      child: scrolleble(),
                    )
                  ],
                ),
                Gap(40),
                Container(
                  height: 155,
                  child: Column(
                    children: [
                      Container(
                        height: 150,
                        width: double.infinity,
                        decoration: const BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage("img/ring1.jpg"),
                                fit: BoxFit.fill)),
                        child: Container(
                          // margin: EdgeInsets.only(top: 20, left: 40),
                          child: Row(
                            children: [
                              Column(
                                children: [
                                  // ignore: prefer_const_constructors
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        left: 150, top: 45),
                                    child: const Text("Best Offer On Bangles",
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 18,
                                            fontWeight: FontWeight.bold)),
                                  ),
                                  const Gap(8),
                                  const Padding(
                                    padding: const EdgeInsets.only(left: 140),
                                    // ignore: unnecessary_const
                                    child: const Text(
                                        "15+ design start from\$6,400/-onwarc",
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 12,
                                            fontWeight: FontWeight.bold)),
                                  ),
                                  Gap(10),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 190),
                                    child: ElevatedButton(
                                        onPressed: () {
                                          Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                  builder: (context) =>
                                                      SecondPage2()));
                                        },
                                        style: ElevatedButton.styleFrom(
                                            backgroundColor: Colors.white),
                                        child: const Text(
                                          "Up to 15% off",
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
                Gap(20),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  // ignore: prefer_const_literals_to_create_immutables
                  children: [
                    const Text(
                      "Shop by Material",
                      style: TextStyle(
                          color: Colors.purple,
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    ),
                    Gap(8),
                    const Text(
                        "Exclusively collection of Diamond Gold & Platinum",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 15,
                            fontWeight: FontWeight.bold)),
                  ],
                ),
              ],
            ),
            Gap(10),
            Column(
              children: [
                Container(
                  height: 350,
                  // color:  Colors.red,
                  child: shop(),
                )
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              // ignore: prefer_const_literals_to_create_immutables
              children: [
                Gap(20),
                const Text(
                  "Explore The World Of Rings",
                  style: TextStyle(
                      color: Colors.purple,
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                ),
                const Gap(8),
                // ignore: prefer_const_constructors
                const Text(
                    "Exclusively collection of Diamond Gold & Platinum\nRings",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 15,
                        fontWeight: FontWeight.bold)),
              ],
            ),
            Gap(20),
            Gap(10),
            Column(
              children: [
                Container(
                  height: 350,
                  // color:  Colors.red,
                  child: gridviewPage(),
                )
              ],
            ),
            Gap(40),
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
                          fit: BoxFit.fill),
                      color: Colors.grey,
                    ),
                    child: Container(
                      // margin: EdgeInsets.only(top: 20, left: 40),
                      child: Row(
                        children: [
                          Column(
                            children: [
                              // ignore: prefer_const_constructors
                              Padding(
                                padding:
                                    const EdgeInsets.only(left: 150, top: 45),
                                child: const Text("Best Offer On Bangles",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold)),
                              ),
                              const Gap(8),
                              const Padding(
                                padding: const EdgeInsets.only(left: 140),
                                // ignore: unnecessary_const
                                child: const Text(
                                    "15+ design start from\$6,400/-onwarc",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 12,
                                        fontWeight: FontWeight.bold)),
                              ),
                              Gap(10),
                              Padding(
                                padding: const EdgeInsets.only(left: 190),
                                child: ElevatedButton(
                                    onPressed: () {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  SecondPage2()));
                                    },
                                    style: ElevatedButton.styleFrom(
                                        backgroundColor: Colors.white),
                                    child: const Text(
                                      "Up to 15% off",
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
            Gap(20),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              // ignore: prefer_const_literals_to_create_immutables
              children: [
                const Text(
                  "Explore The World  Of Rings",
                  style: TextStyle(
                      color: Colors.purple,
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                ),
                Gap(8),
                const Text(
                    "Exclusively Collection Of Diamond,Gold & Platinum Rings",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 15,
                        fontWeight: FontWeight.bold)),
              ],
            ),
            Gap(20),
            InkWell(
              onTap: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => Final()));
              },
              child: Container(
                height: 150,
                width: double.infinity,
                child: ListView.builder(
                    itemCount: 3,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (_, index) {
                      return Container(
                        margin: const EdgeInsets.only(right: 15),
                        child: Row(
                          children: [
                            Container(
                              height: 150,
                              width: 140,
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  image: DecorationImage(
                                      image: AssetImage(
                                          "img/" + Rings.keys.elementAt(index)),
                                      fit: BoxFit.cover)),
                            )
                          ],
                        ),
                      );
                    }),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
