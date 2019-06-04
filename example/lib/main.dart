import 'package:flutter/material.dart';

import 'package:gradient_cached_image/gradient_cached_image.dart';

import 'package:cached_network_image/cached_network_image.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
        home: new Scaffold(
            appBar: new AppBar(
              brightness: Brightness.light,
              backgroundColor: Colors.transparent,
              centerTitle: true,
              elevation: 0.0,
              title: new Text(
                'Gradient Image',
                style:
                    TextStyle(color: Colors.grey, fontWeight: FontWeight.w300),
              ),
            ),
            backgroundColor: Colors.white,
            body: Center(
              child: Container(
                child: GradientImage(
                  height: 300,
                  width: 300,
                  startColor: Colors.lightBlue.withOpacity(0),
                  endColor: Colors.blue.withOpacity(0.4),
                  image: CachedNetworkImage(
                    imageUrl: 'https://www.gstatic.com/webp/gallery3/1.png',
                  ),
                ),
              ),
            )));
  }
}
