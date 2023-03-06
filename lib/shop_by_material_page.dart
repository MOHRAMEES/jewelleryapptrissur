// ignore_for_file: prefer_interpolation_to_compose_strings, camel_case_types

import 'package:flutter/material.dart';
import 'package:jewelleryapptrissur/final__page.dart';

class shop extends StatefulWidget {
  const shop({super.key});

  @override
  State<shop> createState() => _shopState();
}

class _shopState extends State<shop> {
  List text = ["Diamonds", "Gold", "Platinum"];
  var images = {
    "diamond.jpeg": "Explore The World Of",
    "gold.jpg": "Explore The World Of ",
    "se.jpg": "Explore The World Of",
  };
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: images.length,
          itemBuilder: (_, index) {
            return Container(
                width: double.maxFinite,
                height: double.maxFinite,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image:
                            AssetImage("img/" + images.keys.elementAt(index)),
                        fit: BoxFit.cover)),
                child: InkWell(
                  onTap: () {
                    Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => Final()));
                  },
                  child: Container(
                      child: Column(children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 250, right: 170),
                      child: Text(
                        images.values.elementAt(index),
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 200),
                      child: Text(
                        text[index],
                        style: const TextStyle(
                            fontSize: 30,
                            color: Colors.white,
                            fontWeight: FontWeight.w500),
                      ),
                    ),
                
                    // Padding(
                    //   padding: const EdgeInsets.only(top: 30, left: 170),
                    //   child: Row(
                    //       children: List.generate(3, (indexDots) {
                    //     return Container(
                    //       margin: EdgeInsets.only(bottom: 2),
                    //       height: 6,
                    //       width: index == indexDots ? 25 : 8,
                    //       decoration: BoxDecoration(
                    //           borderRadius: BorderRadius.circular(8),
                    //           color: index == indexDots
                    //               ? Colors.black
                    //               : Colors.white),
                    //     );
                    //   })),
                    // ),
                  ])),
                ));
          }),
    );
  }
}
