import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LetsStart extends StatelessWidget {
  const LetsStart({Key? key,thi, this.onPressed}) : super(key: key);

  final onPressed;

  @override
  Widget build(BuildContext context) {
    return CupertinoButton(
      onPressed: onPressed,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            CupertinoIcons.right_chevron,
            color: CupertinoColors.black.withOpacity(0.9),
          ),
          Text(
            "Let\'s start",
            style: TextStyle(
              color: CupertinoColors.black.withOpacity(0.9),
              fontSize: 25,
            ),
          )
        ],
      ),
    );
  }
}
