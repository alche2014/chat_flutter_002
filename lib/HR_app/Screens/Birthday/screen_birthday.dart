import 'package:chatapp/HR_app/Screens/Birthday/Components/model.dart';
import 'package:chatapp/HR_app/Screens/app_bar.dart';
import 'package:flutter/material.dart';

class Birthday extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: app_bar(titilee: 'Birthday'),
      body: Container(
        child: ListView.builder(
          itemCount: myBirthday.length,
          itemBuilder: (_, index) {
            return Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: myBirthday[index],
            );
          },
        ),
      ),
    );
  }
}
