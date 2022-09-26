import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gdsc/MapScreen/containers.dart';

import '../MyThemeData.dart';

class mapScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: MyThemeData.color3,
      appBar: AppBar(
        backgroundColor: MyThemeData.color3,
        elevation: 0,
        title: Text('Map'),
        actions: [
          Icon(Icons.notifications_none_outlined,),
          Container(margin: EdgeInsets.all(14),
            child: CircleAvatar(
              backgroundImage: AssetImage('assets/images/avatar.png'),
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          //crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: 40,),
            Image.asset('assets/images/car.jpeg'),
            SizedBox(height: 40,),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [

                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      defaultContainer(
                          width: 170,
                          height: 180,
                          Iconn: Icons.show_chart_outlined,
                          colorIcon: MyThemeData.color2,
                          title: 'Charge',
                          text1: '300',
                          text2: 'Km'),
                      SizedBox(
                        width: 15,
                      ),
                      defaultContainer(
                          width: 170,
                          height: 180,
                          Iconn: Icons.minimize,
                          colorIcon: Color(0xff41e1d5),
                          title: 'Climate',
                          text1: '21',
                          text2: 'ْ C')
                    ],
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      defaultContainer(
                          width: 170,
                          height: 180,
                          Iconn: Icons.show_chart_outlined,
                          colorIcon: MyThemeData.color2,
                          title: 'Charge',
                          text1: '300',
                          text2: 'Km'),
                      SizedBox(
                        width: 15,
                      ),
                      defaultContainer(
                        width: 170,
                          height: 180,
                          Iconn: Icons.minimize,
                          colorIcon: Color(0xff41e1d5),
                          title: 'Climate',
                          text1: '21',
                          text2: 'ْ C')
                    ],
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      defaultContainer(
                          width: 170,
                          height: 180,
                          Iconn: Icons.show_chart_outlined,
                          colorIcon: MyThemeData.color2,
                          title: 'Charge',
                          text1: '300',
                          text2: 'Km'),
                      SizedBox(
                        width: 15,
                      ),
                      defaultContainer(
                          width: 170,
                          height: 180,
                          Iconn: Icons.minimize,
                          colorIcon: Color(0xff41e1d5),
                          title: 'Climate',
                          text1: '21',
                          text2: 'ْ C')
                    ],
                  ),


                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
