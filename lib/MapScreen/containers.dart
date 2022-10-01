import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../MyThemeData.dart';

Widget defaultContainer({

  required double width,
  required double height,
  String? title ,
  String? text1,
   String? text2 ,
   IconData? Iconn ,
   Color? colorIcon ,

})=>Container(
  decoration: const BoxDecoration(
    color:  Color(0xFF27292c),
    borderRadius: BorderRadius.all(Radius.circular(20)),
  ),
  height: height,
  width: width,
  child: Column(
    crossAxisAlignment: CrossAxisAlignment.stretch,
    children: [
      Padding(
        padding: const EdgeInsets.all(15.0),
        child: Text(title!,
          style: const TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 20,
          ),
        ),
      ),
      Column(
        children: [
          Icon(Iconn,
            color: MyThemeData.color2,),
          Text
            (text1!,
            style: const TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 50,
            ),
          ),
          Text(text2!,
            style: const TextStyle(
              color: Colors.grey,
              fontWeight: FontWeight.bold,
              fontSize: 20,
            ),),
        ],
      ),
    ],
  ),
);


