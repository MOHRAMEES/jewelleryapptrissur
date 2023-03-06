// ignore_for_file: prefer_const_constructors, deprecated_member_use

import 'package:flutter/material.dart';
import 'package:jewelleryapptrissur/final__page.dart';

class GridB extends StatefulWidget {
  const GridB({Key? key}) : super(key: key);

  @override
  State<GridB> createState() => _GridBState();
}

class _GridBState extends State<GridB> {
  final List<Map<String, dynamic>> gridMap = [
    {
      "title": "Women|Bangle",
      "price": "Traditional cut Golden Bangle",
      "s": "\$1,600 Flat 5% off",
      "images": "img/ring4.jpg"
    },
    {
      "title": "Women|Bangle",
      "price": "Traditional cut Golden Bangle",
      "s": "\$11,003 Flat 5% off",
      "images": "img/bangle.jpg"
    },
    {
      "title": "Women|Bangle",
      "price": "Traditional cut Golden Bangle",
      "s": "\$17,600 Flat 5% off",
      "images": "img/ring2.jpg"
    },
    {
      "title": "Women|Bangle",
      "price": "Traditional cut Golden Bangle",
      "s": "\$21,600 Flat 5% off",
      "images": "img/ring1.jpg"
    },
    {
      "title": "Women|Bangle",
      "price": "Traditional cut Golden Bangle",
      "s": "\$1,600 Flat 5% off",
      "images": "img/g3.jpg"
    },
    {
      "title": "Women|Bangle",
      "price": "Traditional cut Golden Bangle",
      "s": "\$11,003 Flat 5% off",
      "images": "img/g2.jpg"
    },
    {
      "title": "Women|Bangle",
      "price": "Traditional cut Golden Bangle",
      "s": "\$17,600 Flat 5% off",
      "images": "img/g1.jpeg"
    },
    {
      "title": "Women|Bangle",
      "price": "Traditional cut Golden Bangle",
      "s": "\$21,600 Flat 5% off",
      "images": "img/bangle4.jpg"
    }
  ];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: InkWell(
        onTap: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => Final()));
        },
        child: GridView.builder(
          padding: EdgeInsets.all(8.0),
          physics: const NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 12.0,
            mainAxisSpacing: 12.0,
            mainAxisExtent: 310,
          ),
          itemCount: gridMap.length,
          itemBuilder: (_, index) {
            return Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(
                  16.0,
                ),
                color: Colors.white,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ClipRRect(
                    borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(20.0),
                      topRight: Radius.circular(20.0),
                    ),
                    child: Image.asset(
                      "${gridMap.elementAt(index)['images']}", //network(
                      //   "${gridMap.elementAt(index)['images']}",
                      height: 170,
                      width: double.infinity,
                      fit: BoxFit.cover,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "${gridMap.elementAt(index)['title']}",
                          style: Theme.of(context).textTheme.subtitle1!.merge(
                                const TextStyle(
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                        ),
                        const SizedBox(
                          height: 8.0,
                        ),
                        Text(
                          "${gridMap.elementAt(index)['price']}",
                          style: Theme.of(context).textTheme.subtitle2!.merge(
                                TextStyle(
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                        ),
                        const SizedBox(
                          height: 8.0,
                        ),
                        const SizedBox(
                          height: 8.0,
                        ),
                        Text(
                          "${gridMap.elementAt(index)['s']}",
                          style: Theme.of(context).textTheme.subtitle2!.merge(
                                TextStyle(
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
