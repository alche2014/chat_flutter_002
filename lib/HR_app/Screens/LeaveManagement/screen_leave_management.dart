import 'package:chatapp/HR_app/Screens/LeaveHistory/screen_leave_history.dart';
import 'package:flutter/material.dart';
import 'package:chatapp/HR_app/Screens/LeaveManagement/Components/Card.dart';
import 'package:chatapp/HR_app/Screens/app_bar.dart';

class LeaveManagement extends StatelessWidget {
  String text1 = 'Anual Leaves';
  String text2 = 'Casual Leaves';
  String text3 = 'Sick Leaves';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: app_bar(titilee: 'Leave Management'),
      body: SingleChildScrollView(
        // ---------------Main body Display------------------------------
        child: Container(
          padding: EdgeInsets.all(15),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              //-------------Text button----------------------------------
              Align(
                alignment: Alignment.topRight,
                child: TextButton(
                  onPressed: () {
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => LeaveHistory()));
                  },
                  child: Text(
                    'Leaves History',
                    style: TextStyle(color: Colors.grey),
                  ),
                ),
              ),
              //-----------------------Cards---------------------------
              LeaveManagementCard(text1),
              LeaveManagementCard(text2),
              LeaveManagementCard(text3),
            ],
          ),
        ),
      ),
    );
  }
}

