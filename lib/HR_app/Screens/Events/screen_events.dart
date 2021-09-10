import 'package:chatapp/HR_app/Screens/Events/Components/events_card.dart';
import 'package:chatapp/HR_app/Screens/Events/Components/model.dart';
import 'package:flutter/material.dart';

class Events extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Checkin History',
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
        actions: [
          IconButton(
              icon: Icon(
                Icons.notifications,
              ),
              onPressed: () {})
        ],
      ),
      body: ListView.builder(
        itemCount: myevents.length,
        itemBuilder: (_, index) {
          return Padding(
              padding: EdgeInsets.symmetric(vertical: 10, horizontal: 30),
              child: myevents[index]);
        },
      ),
    );
  }
}
