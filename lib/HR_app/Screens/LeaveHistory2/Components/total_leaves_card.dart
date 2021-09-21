import 'package:chatapp/HR_app/constants.dart';
import 'package:flutter/material.dart';

class TotalLeavesCard extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 3,
      borderRadius: BorderRadius.circular(10),
      color:
          MediaQuery.of(context).platformBrightness == Brightness.light
              ? Colors.white
              : kContentColorLightTheme.withOpacity(0.1),
      child: Container(
        // color: kPrimaryColor.withOpacity(0.1),
        // margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Column(
              children: [
                CircleAvatar(
                  radius: 30,
                  backgroundColor:
                      MediaQuery.of(context).platformBrightness ==
                              Brightness.light
                          ? kPrimaryColor.withOpacity(0.1)
                          : Theme.of(context).scaffoldBackgroundColor,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(100),
                    child: Image.asset(
                      'assets/images/chain_icon.png',
                      color:
                          MediaQuery.of(context).platformBrightness ==
                                  Brightness.light
                              ? Colors.black
                              : Colors.white,
                      width: 60,
                    ),
                  ),
                ),
                SizedBox(height: 10),
                Text("Anual Leaves"),
                Text(
                  '20 Pending',
                  style: TextStyle(color: Colors.grey, fontSize: 12),
                )
              ],
            ),
            Column(
              children: [
                CircleAvatar(
                  radius: 30,
                  backgroundColor:
                      MediaQuery.of(context).platformBrightness ==
                              Brightness.light
                          ? kPrimaryColor.withOpacity(0.1)
                          : Theme.of(context).scaffoldBackgroundColor,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(100),
                    child: Image.asset(
                      'assets/images/chain_icon.png',
                      color:
                          MediaQuery.of(context).platformBrightness ==
                                  Brightness.light
                              ? Colors.black
                              : Colors.white,
                      width: 60,
                    ),
                  ),
                ),
                SizedBox(height: 10),
                Text("Casual Leaves"),
                Text(
                  '20 Pending',
                  style: TextStyle(color: Colors.grey, fontSize: 12),
                )
              ],
            ),
            Column(
              children: [
                CircleAvatar(
                  radius: 30,
                  backgroundColor:
                      MediaQuery.of(context).platformBrightness ==
                              Brightness.light
                          ? kPrimaryColor.withOpacity(0.1)
                          : Theme.of(context).scaffoldBackgroundColor,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(100),
                    child: Image.asset(
                      'assets/images/chain_icon.png',
                      color:
                          MediaQuery.of(context).platformBrightness ==
                                  Brightness.light
                              ? Colors.black
                              : Colors.white,
                      width: 60,
                    ),
                  ),
                ),
                SizedBox(height: 10),
                Text("Sick Leaves"),
                Text(
                  '20 Pending',
                  style: TextStyle(color: Colors.grey, fontSize: 12),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
