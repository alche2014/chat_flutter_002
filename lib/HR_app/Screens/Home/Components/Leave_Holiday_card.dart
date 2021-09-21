import 'package:chatapp/HR_app/constants.dart';
import 'package:flutter/material.dart';

class Leave_HolidayCard extends StatelessWidget {
  String text;
  String text1;
  Leave_HolidayCard(this.text, this.text1);

  @override
  Widget build(BuildContext context) {
    return Container(
      // color: Colors.white,
      child: ListTile(
        leading: CircleAvatar(
          radius: 30,
          backgroundColor:
              MediaQuery.of(context).platformBrightness == Brightness.light
                  ? kPrimaryColor.withOpacity(0.1)
                  : Theme.of(context).scaffoldBackgroundColor,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(100),
            child: Image.asset(
              'assets/images/chain_icon.png',
              color:
                  MediaQuery.of(context).platformBrightness == Brightness.light
                      ? Colors.black
                      : Colors.white,
              width: 60,
            ),
          ),
        ),
        title: Text(text),
        subtitle: Text(
          text1,
          style: TextStyle(color: Colors.grey, fontSize: 10),
        ),
      ),
    );
  }
}
