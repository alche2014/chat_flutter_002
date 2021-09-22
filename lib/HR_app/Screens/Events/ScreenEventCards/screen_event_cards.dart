import 'package:chatapp/HR_app/Screens/Events/ScreenEventCards/Components/model.dart';
import 'package:chatapp/HR_app/Screens/app_bar.dart';
import 'package:flutter/material.dart';

class Events extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: app_bar(titilee: 'Events'),
      body: ListView.builder(
        itemCount: myevents.length,
        itemBuilder: (_, index) {
          return Padding(
              padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
              child: myevents[index]);
        },
      ),
    );
  }
}
