import 'package:chatapp/HR_app/Screens/LeaveHistory2/Components/leave_history2_card.dart';
import 'package:chatapp/HR_app/Screens/LeaveHistory2/Components/model.dart';
import 'package:chatapp/HR_app/Screens/LeaveHistory2/Components/total_leaves_card.dart';
import 'package:chatapp/HR_app/Screens/app_bar.dart';
import 'package:flutter/material.dart';

class LeaveHistory2 extends StatefulWidget {
  @override
  _LeaveHistory2State createState() => _LeaveHistory2State();
}

class _LeaveHistory2State extends State<LeaveHistory2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: app_bar('Leave History'),
      body: SingleChildScrollView(
        physics: ScrollPhysics(),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: Column(mainAxisSize: MainAxisSize.min,
            children: [
              TotalLeavesCard(),
              SizedBox(height: 10),
              Align(
                alignment: Alignment.centerRight,
                child: InkWell(
                  onTap: () {},
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text('Filter',
                          style: TextStyle(fontWeight: FontWeight.bold)),
                      SizedBox(width: 2),
                      Icon(Icons.tune),
                    ],
                  ),
                ),
              ),
              Flexible(
                  child: ListView.builder(
                    physics: NeverScrollableScrollPhysics(),
                    itemCount: myleavehistory.length,
                    shrinkWrap: true,
                    itemBuilder: (_, index) {
                      return LeaveHistory2Card(model: myleavehistory[index]);
                    },
                  ),
                ),
            ],
          ),
        ),
      ),
    );
  }
}
