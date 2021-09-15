import 'package:chatapp/HR_app/constants.dart';
import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

final darkRed = Color(0xffbf2634);
final lightPink = Color(0xffF8E7E9);
final lightGreen = Color(0xffD6FBE0);

class CircularBar extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return CircularPercentIndicator(
      radius: 250,
      lineWidth: 14,
      backgroundColor: kPrimaryColor.withOpacity(0.1),
      percent: 0.72,
      progressColor: kPrimaryColor,
      circularStrokeCap: CircularStrokeCap.round,
      animation: true,
      center: Container(
          height: 90,
          width: 90,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(100),
            color: kSecondaryColor,
          ),
          child: Center(
              child: Text(
            '72/100',
            style: TextStyle(
                color: Colors.white, fontSize: 21, fontWeight: FontWeight.bold),
          ))),
    );
  }
}