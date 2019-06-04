library gradient_cached_image;

import 'package:flutter/material.dart';

import 'package:cached_network_image/cached_network_image.dart';

class GradientCachedImage extends StatelessWidget {
  GradientCachedImage(
      {@required this.image,
      this.height = double.infinity,
      this.width = double.infinity,
      this.gradient = false,
      this.startColor = Colors.transparent,
      this.endColor = Colors.transparent,
      this.fit = BoxFit.cover,
      this.startStop = 0.6,
      this.endStop = 1.0});

  final CachedNetworkImage image;
  final double height;
  final double width;
  final bool gradient;
  final Color startColor;
  final Color endColor;
  final BoxFit fit;
  final double startStop;
  final double endStop;

  @override
  Widget build(BuildContext context) {
    return Stack(children: <Widget>[
      Container(height: height, width: width, child: image),
      Container(
        height: height,
        width: width,
        decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: FractionalOffset.topCenter,
                end: FractionalOffset.bottomCenter,
                colors: [
              startColor,
              endColor,
            ],
                stops: [
              startStop,
              endStop
            ])),
      )
    ]);
  }
}
