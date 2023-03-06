// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_typeahead/flutter_typeahead.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:jewelleryapptrissur/Bottom__navigator__bar.dart';

class FieldPage extends StatelessWidget {
  List<String> suggestons = [
    "ring",
    "bangle",
    "chain",
    "watch",
    "barclette",
    "karumani",
    "nospin",
    "chutti",
    "gold coins",
    "thoda",
    "sachin",
    "second sed",
    "nagaminikyam",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Text(" TextField"), backgroundColor: Colors.redAccent),
      body: SingleChildScrollView(
        child: Column(children: [
          Container(
            margin: const EdgeInsets.all(30),
            alignment: Alignment.topCenter,
            child: Column(
              children: [
                TypeAheadField(
                  animationStart: 0,
                  animationDuration: Duration.zero,
                  textFieldConfiguration: const TextFieldConfiguration(
                      autofocus: true,
                      style: TextStyle(fontSize: 15),
                      decoration:
                          InputDecoration(border: OutlineInputBorder())),
                  suggestionsBoxDecoration:
                      SuggestionsBoxDecoration(color: Colors.lightBlue[50]),
                  suggestionsCallback: (pattern) {
                    List<String> matches = <String>[];
                    matches.addAll(suggestons);

                    matches.retainWhere((s) {
                      return s.toLowerCase().contains(pattern.toLowerCase());
                    });
                    Gap(20);
                    return matches;
                  },
                  itemBuilder: (context, sone) {
                    return Card(
                        child: Container(
                      padding: EdgeInsets.all(10),
                      child: Text(sone.toString()),
                    ));
                  },
                  onSuggestionSelected: (suggestion) {
                    print(suggestion);
                  },
                ),
              ],
            ),
          ),
          Gap(120),
          Padding(
            padding: const EdgeInsets.only(right: 150, left: 30),
            child: Row(
              children: [
                Text(
                  'POPULAR ',
                  style: TextStyle(fontSize: 15, color: Colors.grey),
                ),
                Text(
                  'SEARCHES ',
                  style: TextStyle(fontSize: 15, color: Colors.grey),
                ),
              ],
            ),
          ),
          Gap(30),
          InkWell(
            onTap: () {
              Get.to(HomePage22());
            },
            child: GridView.count(
              crossAxisCount: 2,
              crossAxisSpacing: 10.0,
              mainAxisSpacing: 10.0,
              shrinkWrap: true,
              children: List.generate(
                4,
                (index) {
                  return Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Container(
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage('img/ring4.jpg'),
                          fit: BoxFit.cover,
                        ),
                        borderRadius: BorderRadius.all(
                          Radius.circular(20.0),
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
          ),
        ]),
      ),
    );
  }
}
