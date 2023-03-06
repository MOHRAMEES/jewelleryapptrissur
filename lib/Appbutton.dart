//ignore_for_file: must_be_immutable, prefer_const_constructors, file_names

import 'package:flutter/material.dart';
//import 'package:travel_app_flutter/widgets/app_text.dart';

class AppButtons extends StatelessWidget {
  final Color color;
  final Color backgroundColor;
  final double size;
  String text;
  bool isIcon;
  IconData icon;
  final Color borderColor;
  AppButtons({
    Key? key,
    this.text = "hii",
    this.icon = Icons.handyman,
    required this.color,
    required this.backgroundColor,
    required this.size,
    required this.borderColor,
    this.isIcon = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 25,
      height: 25,
      decoration: BoxDecoration(
          border: Border.all(color: borderColor, width: 1.0),
          borderRadius: BorderRadius.circular(100),
          color: backgroundColor),
      child: isIcon == false
          ? Center(
              child: Text(
                text,
                style: TextStyle(color: Colors.white),
              ),
              // child: AppText(
              //     text: text,
              //     color:color,
              //   ),
            )
          : Center(
              child: Icon(
              icon,
              color: color,
            )),
    );
  }
}
