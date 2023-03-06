import 'dart:async';

import 'package:flutter/material.dart';
import 'package:jewelleryapptrissur/Bottom__navigator__bar.dart';

class SplashScreen extends StatefulWidget {
  @override
  Splash createState() => Splash();
}

class Splash extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    Timer(
        Duration(seconds: 2),
        () => Navigator.of(context).pushReplacement(MaterialPageRoute(
            builder: (BuildContext context) => HomePage22())));

    var assetsImage = new AssetImage(
        'img/se.jpg'); //<- Creates an object that fetches an image.
    var image = new Image(
        image: assetsImage,
        height: 300); //<- Creates a widget that displays an image.

    return MaterialApp(
      home: Scaffold(
        /* appBar: AppBar(
          title: Text("MyApp"),
          backgroundColor:
              Colors.blue, //<- background color to combine with the picture :-)
        ),*/
        body: Container(
          decoration: new BoxDecoration(color: Colors.white),
          child: new Center(
            child: image,
          ),
        ), //<- place where the image appears
      ),
    );
  }
}
