import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

import 'package:flutter/material.dart';

class Logo extends StatelessWidget {
  Logo({Key? key, this.height, this.width, this.radius}) : super(key: key);

  var width;
  final height;
  final radius;

  @override
  Widget build(BuildContext context) {
    return Container(
        height: width,
        width: height,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(radius)),
          shape: BoxShape.rectangle,
          color: Colors.white.withOpacity(0.8),
        ),
        child: Padding(
          padding: const EdgeInsets.all(2.0),
          child: Image(
            image: AssetImage("images/icon.png"),
            fit: BoxFit.fitWidth,
          ),
        ));
  }
}
