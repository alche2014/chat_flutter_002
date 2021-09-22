import 'package:chatapp/HR_app/Screens/Performance2/screen_learning1.dart';
import 'package:chatapp/HR_app/Screens/app_bar.dart';
import 'package:chatapp/HR_app/circular_bar.dart';
import 'package:chatapp/HR_app/constants.dart';
import 'package:chatapp/HR_app/doted_stepbar.dart';
import 'package:flutter/material.dart';

class Performance3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: app_bar(titilee: 'Performance'),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Spacer(),
            Doted_stepbar(0),
            Spacer(),
            Text(
              'Overall Performance',
              style: TextStyle(
                  color: MediaQuery.of(context).platformBrightness ==
                          Brightness.light
                      ? Colors.black
                      : Colors.grey,
                  fontSize: 21,
                  fontWeight: FontWeight.bold),
            ),
            Spacer(),
//------------------Circular bar-----------------
            CircularBar(),
            Spacer(flex: 3),
            FractionallySizedBox(
              widthFactor: 1,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: kPrimaryColor,
                  padding: EdgeInsets.symmetric(
                    vertical: 15,
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                onPressed: () {
                  Navigator.pushReplacement(context,
                      MaterialPageRoute(builder: (context) => Learning1()));
                },
                child: Text(
                  'View Details',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
            Spacer(),
          ],
        ),
      ),
    );
  }
}
