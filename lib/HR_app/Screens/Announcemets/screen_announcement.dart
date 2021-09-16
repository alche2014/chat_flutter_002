import 'package:chatapp/HR_app/Screens/Announcemets/Components/model.dart';
import 'package:chatapp/HR_app/Screens/app_bar.dart';
import 'package:flutter/material.dart';

class Announcements extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: app_bar('Announcements'),
      body: Container(
        child: ListView.builder(
          itemCount: myAnnouncement.length,
          itemBuilder: (_, index) {
            return Padding(
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: myAnnouncement[index],
            );
          },
        ),
      ),
    );
  }
}
