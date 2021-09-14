import 'package:chatapp/HR_app/constants.dart';
import 'package:flutter/material.dart';

class JoinMemberCard extends StatelessWidget {
  final String text;
  final String text1;
  final String image;
  JoinMemberCard(this.text, this.text1, this.image);
  @override
  Widget build(BuildContext context) {
    return Container(
      // color: MediaQuery.of(context).platformBrightness ==
      //                       Brightness.light
      //                   ? kContentColorDarkTheme
      //                   : kContentColorLightTheme.withOpacity(0.1),
      child: ListTile(
        leading: CircleAvatar(
          radius: 30,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(100),
            child: Image.asset(image),
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
