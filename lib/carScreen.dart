import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_switch/flutter_switch.dart';
import 'package:gdsc/Circular.dart';
import 'package:gdsc/MyThemeData.dart';

class CarScreen extends StatefulWidget {
  @override
  State<CarScreen> createState() => _CarScreenState();
}

class _CarScreenState extends State<CarScreen> {
  bool status = false;
  double height = 30;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: MyThemeData.color2,
        elevation: 0,
        title: const Text(
          'Hello,Mark',
          style: TextStyle(color: Colors.black),
        ),
        actions: [
          const Icon(
            Icons.notifications_none_outlined,
            color: Colors.black,
          ),
          Container(
            margin: const EdgeInsets.all(14),
            child: const CircleAvatar(
              backgroundImage: AssetImage('assets/images/avatar.png'),
            ),
          ),
        ],
      ),
      body: Stack(
        children: [
          Container(
            height: double.infinity,
            width: double.infinity,
            color: MyThemeData.color2,
            child: Column(
              children: [
                const Text(
                  'Lil Nas X',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                const Text(
                  'HIGHEST IN THE ROOM',
                  style: TextStyle(
                      fontWeight: FontWeight.bold, color: Colors.grey),
                ),
                // Image.asset(
                //   'assets/images/player.png',
                // ),
                const SizedBox(
                  height: 10,
                ),
                const Icon(
                  Icons.pause_circle_filled,
                  size: 50,
                ),
                Slider(
                    activeColor: Colors.black,
                    inactiveColor: Colors.white,
                    min: 0,
                    max: 100,
                    value: height,
                    onChanged: (value) {
                      setState(() {
                        height = value;
                      });
                    }),
                const SizedBox(
                  height: 5,
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Icon(Icons.skip_previous),
                    SizedBox(
                      width: 150,
                    ),
                    Icon(Icons.skip_next),
                  ],
                ),
              ],
            ),
          ),
          Align(
            alignment: AlignmentDirectional.bottomCenter,
            child: Container(
              decoration: BoxDecoration(
                color: MyThemeData.color3,
                borderRadius: const BorderRadius.only(
                  topRight: Radius.circular(200),
                  topLeft: Radius.circular(200),
                ),
              ),
              height: 550,
              width: double.infinity,
              child: Column(
                children: [
                  const Icon(
                    Icons.minimize,
                    color: Colors.white,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Center(
                    child: Container(
                      height: 160,
                      width: 160,
                      decoration: const BoxDecoration(
                          // boxShadow: [
                          //   BoxShadow(
                          //     color: Colors.grey.withOpacity(0.2),
                          //     spreadRadius: 10,
                          //     blurRadius: 7,
                          //     offset: const Offset(
                          //         0, 3), // changes position of shadow
                          //   ),
                          // ],
                          // border: Border.all(
                          //   width: 15,
                          //   color: MyThemeData.color2,
                          // ),
                          borderRadius:
                              BorderRadius.all(Radius.circular(100)),
                      ),
                      // child: Padding(
                      //   padding: const EdgeInsets.all(25.0),
                      child: Circle(),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                ],
              ),
            ),
          ),
          Align(
            alignment: AlignmentDirectional.bottomCenter,
            child: Container(
              height: 340,
              width: double.infinity,
              color: MyThemeData.color3,
              child: SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            color: MyThemeData.color1,
                            borderRadius:
                                const BorderRadius.all(Radius.circular(20)),
                          ),
                          height: 250,
                          width: 170,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.stretch,
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: Text(
                                  'Battery',
                                  style: MyThemeData.Themee.textTheme.headline1,
                                ),
                              ),
                              Column(
                                children: const [
                                  Icon(
                                    Icons.battery_charging_full_outlined,
                                    size: 150,
                                    color: Color(0xff707CC0),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(
                          width: 15,
                        ),
                        Column(
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                color: MyThemeData.color1,
                                borderRadius:
                                    const BorderRadius.all(Radius.circular(20)),
                              ),
                              height: 120,
                              width: 170,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.stretch,
                                children: [
                                  Row(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.all(10.0),
                                        child: Text(
                                          'Current',
                                          style: MyThemeData
                                              .Themee.textTheme.headline1,
                                        ),
                                      ),
                                      const SizedBox(
                                        width: 50,
                                      ),
                                      const Icon(
                                        Icons.info_outline,
                                        color: Colors.grey,
                                      ),
                                    ],
                                  ),
                                  Column(
                                    children: [
                                      Text(
                                        '24',
                                        style: MyThemeData
                                            .Themee.textTheme.headline2,
                                      ),
                                      Text(
                                        'A',
                                        style: MyThemeData
                                            .Themee.textTheme.headline3,
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Container(
                              decoration: BoxDecoration(
                                color: MyThemeData.color1,
                                borderRadius:
                                    const BorderRadius.all(Radius.circular(20)),
                              ),
                              height: 120,
                              width: 170,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.stretch,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(10.0),
                                    child: Text(
                                      'Cable',
                                      style: MyThemeData
                                          .Themee.textTheme.headline1,
                                    ),
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      const Text(
                                        'Locked',
                                        style: TextStyle(
                                          color: Colors.grey,
                                          fontWeight: FontWeight.w600,
                                          fontSize: 18,
                                        ),
                                      ),
                                      const SizedBox(
                                        width: 15,
                                      ),
                                      // ImageIcon(
                                      //   const AssetImage(
                                      //       'assets/images/switch-on.png'),
                                      //   color: MyThemeData.color2,
                                      //   size: 50,
                                      // ),
                                      FlutterSwitch(
                                        height: 20.0,
                                        width: 40.0,
                                        padding: 4.0,
                                        toggleSize: 15.0,
                                        borderRadius: 10.0,
                                        activeColor: MyThemeData.color2,
                                        value: status,
                                        onToggle: (value) {
                                          setState(() {
                                            status = value;
                                          });
                                        },
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            color: MyThemeData.color1,
                            borderRadius:
                                const BorderRadius.all(Radius.circular(20)),
                          ),
                          height: 250,
                          width: 170,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.stretch,
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: Text(
                                  'Oil Levels',
                                  style: MyThemeData.Themee.textTheme.headline1,
                                ),
                              ),
                              ImageIcon(
                                  const AssetImage(
                                      'assets/images/icons8-speedometer-50.png'),
                                  color: MyThemeData.color2,
                                  size: 160),
                            ],
                          ),
                        ),
                        const SizedBox(
                          width: 15,
                        ),
                        Container(
                          decoration: BoxDecoration(
                            color: MyThemeData.color1,
                            borderRadius:
                                const BorderRadius.all(Radius.circular(20)),
                          ),
                          height: 250,
                          width: 170,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.stretch,
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: Text(
                                  'Coolant',
                                  style: MyThemeData.Themee.textTheme.headline1,
                                ),
                              ),
                              Column(
                                children: [
                                  ImageIcon(
                                    const AssetImage(
                                      'assets/images/icons8-winter-50.png',
                                    ),
                                    color: MyThemeData.color2,
                                    size: 100,
                                  ),
                                  Text(
                                    '87',
                                    style:
                                        MyThemeData.Themee.textTheme.headline2,
                                  ),
                                  Text(
                                    '%',
                                    style:
                                        MyThemeData.Themee.textTheme.headline3,
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Container(
                      decoration: BoxDecoration(
                        color: MyThemeData.color1,
                        borderRadius:
                            const BorderRadius.all(Radius.circular(20)),
                      ),
                      height: 200,
                      width: 350,
                      child: Row(
                        children: [
                          Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: Text(
                                  'Pad Wear',
                                  style: MyThemeData.Themee.textTheme.headline1,
                                ),
                              ),
                              const SizedBox(
                                height: 30,
                              ),
                              Row(
                                children: [
                                  Text(
                                    '94',
                                    style:
                                        MyThemeData.Themee.textTheme.headline2,
                                  ),
                                  const SizedBox(
                                    width: 10,
                                  ),
                                  Text(
                                    '%',
                                    style:
                                        MyThemeData.Themee.textTheme.headline3,
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const SizedBox(
                            width: 25,
                          ),
                          Image.asset('assets/images/wheel.png'),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
