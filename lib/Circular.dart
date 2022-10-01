import 'package:dashed_circular_progress_bar/dashed_circular_progress_bar.dart';
import 'package:flutter/material.dart';
import 'package:gdsc/MyThemeData.dart';

class Circle extends StatelessWidget {

  final ValueNotifier<double> _valueNotifier = ValueNotifier(0);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          color: MyThemeData.color3,
          // height: 200,
          // width: 200,
          child: DashedCircularProgressBar.aspectRatio(
            aspectRatio: 1, // width ÷ height
            valueNotifier: _valueNotifier,
            progress: 478,
            maxProgress: 670,
            corners: StrokeCap.butt,
            foregroundColor: MyThemeData.color2,
            backgroundColor: const Color(0xffeeeeee),
            foregroundStrokeWidth: 20,
            backgroundStrokeWidth: 20,
            animation: true,
            child: ValueListenableBuilder(
              valueListenable: _valueNotifier,
              builder: (_, double value, __) =>
                  Padding(
                    padding: const EdgeInsets.all(30.0),
                    child: Column(
                      children: [
                        Icon(
                          Icons.show_chart_outlined,
                          color: MyThemeData.color2,
                        ),
                        Text(
                          '${value.toInt()}',
                          style: MyThemeData.Themee.textTheme.headline2,
                        ),
                        Text(
                          'Km',
                          style: MyThemeData.Themee.textTheme.headline3,
                        ),
                      ],
                    ),
                  ),
            ),
          )
        ),
      ),
    );
  }
}
// Text(
// '${value.toInt()}%',
// style: TextStyle(fontSize: 50,
// color: Colors.red,
// fontWeight: FontWeight.w600
// ),
// ),