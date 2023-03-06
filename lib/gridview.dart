// ignore_for_file: camel_case_types, prefer_const_constructors, prefer_interpolation_to_compose_strings

import 'package:flutter/material.dart';
import 'package:jewelleryapptrissur/SecondPage.dart';

class gridviewPage extends StatefulWidget {
  const gridviewPage({super.key});

  @override
  State<gridviewPage> createState() => _gridviewPageState();
}

class _gridviewPageState extends State<gridviewPage> {
  var gridview = {
    "ring1.jpg": "Dapper 22 karat Dimond gold Ring",
    "ring2.jpg": "Dapper 22 karat yellow gold Ring",
    "ring3.jpeg": "Edgy geomatric platinum Ring",
    "ring4.jpg": "Abstract 22 karatgolden Ring",
  };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView.count(
        crossAxisCount: 2,
        crossAxisSpacing: 10.0,
        mainAxisSpacing: 10.0,
        shrinkWrap: true,
        children: List.generate(
          4,
          (index) {
            return Padding(
              padding: const EdgeInsets.all(10.0),
              child: InkWell(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => SecondPage2()));
                },
                child: Container(
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image:
                          AssetImage('img/' + gridview.keys.elementAt(index)),
                      fit: BoxFit.cover,
                    ),
                    // borderRadius: BorderRadius.all(
                    //   Radius.circular(10.0),
                    // ),
                  ),
                  child: Column(
                    children: [
                      SizedBox(
                        height: 100,
                      ),
                      Text(
                        gridview.values.elementAt(index),
                        style: TextStyle(color: Colors.white),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 80),
                        child: Text(
                          '\$13050',
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
