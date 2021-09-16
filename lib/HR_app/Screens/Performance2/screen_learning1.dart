import 'package:chatapp/HR_app/RaitingBar.dart';
import 'package:chatapp/HR_app/Screens/Performance2/screen_learning2.dart';
import 'package:chatapp/HR_app/Screens/app_bar.dart';
import 'package:chatapp/HR_app/constants.dart';
import 'package:chatapp/HR_app/doted_stepbar.dart';
import 'package:flutter/material.dart';

final orange = Colors.orange[400];
final green = Colors.green[400];
final red = Colors.red[400];
final white = Colors.white;

class Learning1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: app_bar('Performance'),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            // Spacer(),
//-------------doted bar---------------
            Doted_stepbar(1),
            Spacer(flex: 2),
            Text(
              'Learning',
              style: TextStyle(fontSize: 21, fontWeight: FontWeight.bold),
            ),
//-------------raiting bar----------------
            SizedBox(height: 10),
            RaitingBar(orange, 'On Job Learing', orange),
            RaitingBar(green, 'Functional', green),
            RaitingBar(red, 'Softskills', red),
            Spacer(flex: 8),
//------------button----------------
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
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Learning2()));
                },
                child: Text(
                  'View Details',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
            Spacer(flex: 2),
          ],
        ),
      ),
    );
  }
}
