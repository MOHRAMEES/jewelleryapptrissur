// ignore_for_file: camel_case_types, unused_import, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:jewelleryapptrissur/final__page.dart';

class scrolleble extends StatefulWidget {
  const scrolleble({super.key});

  @override
  State<scrolleble> createState() => _scrollebleState();
}

class _scrollebleState extends State<scrolleble> {
  var images = {
    "1girl.jpg": "Stunning jewllery collections exclusively for",
    "david.jpeg": "Stunning jewllery collections exclusively for ",
    "kids1.jpeg": "Stunning jewllery collections exclusively for",
  };
  List text = [
    "women",
    "Men",
    "Children",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: images.length,
          itemBuilder: (_, index) {
            return InkWell(
              onTap: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => Final()));
              },
              child: Container(
                width: double.maxFinite,
                height: double.maxFinite,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image:
                            AssetImage("img/" + images.keys.elementAt(index)),
                        fit: BoxFit.cover)),
                child: Container(
                    child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(
                        top: 250,
                      ),
                      child: Text(
                        images.values.elementAt(index),
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                        ),
                      ),
                    ),
                    // Gap(5),
                    Padding(
                      padding: const EdgeInsets.only(right: 200),
                      child: Text(
                        text[index],
                        style: TextStyle(
                            fontSize: 30,
                            color: Colors.white,
                            fontWeight: FontWeight.w500),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 15, left: 170),
                      child: Row(
                          children: List.generate(3, (indexDots) {
                        return Container(
                          margin: EdgeInsets.only(bottom: 2),
                          height: 6,
                          width: index == indexDots ? 25 : 8,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              color: index == indexDots
                                  ? Colors.black
                                  : Colors.white),
                        );
                      })),
                    ),
                  ],
                )),
              ),
            );
          }),
    );
  }
}
