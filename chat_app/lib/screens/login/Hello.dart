import 'dart:ui';
import 'package:chat_app/Components/Blur_Image_Page_Scaffold.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';

import '../../Components/Lets_Start.dart';
import '../../Components/Terms_and_conditions.dart';
import '../../Components/logo.dart';

class Hello extends StatelessWidget {
  const Hello({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlurImagePageScaffold(imagePath: 'images/background.jpg', body: [
        Logo(height: 150.0, width: 150.0, radius: 50.0,),
        Text("Hello",
           style: TextStyle(color: Colors.white.withOpacity(0.7),fontSize: 60),
        ),
        Column(children: [
           Text("WhatsApp is a Cross-Platform",style: TextStyle(color: Colors.black45.withOpacity(0.9),fontSize: 20),),
           Text("mobile messaging with friends",style: TextStyle(color: Colors.black45.withOpacity(0.9),fontSize: 20),),
           Text("all over the world",style: TextStyle(color: Colors.black45.withOpacity(0.9), fontSize: 20),),
        ],),
        TermsAndConditions(
          onPressed: () {},
        ),
        LetsStart(onPressed: (){},),
    ],);
  }
}



