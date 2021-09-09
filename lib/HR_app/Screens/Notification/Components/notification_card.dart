import 'package:chatapp/HR_app/Screens/Notification/Components/models.dart';
import 'package:flutter/material.dart';

class NotificationCard extends StatelessWidget {
  NotificationCard({this.model});
  NotificationModel model;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      padding: EdgeInsets.symmetric(horizontal: 15, vertical: 15),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.white,
      ),
      child: Row(
        children: [
          Container(
            padding: EdgeInsets.all(6),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: model.status == NotificationStatus.Approved
                  ? Colors.green
                  : model.status == NotificationStatus.Rejected
                      ? Colors.red
                      : Colors.blue,
            ),
            child: Icon(
              model.status == NotificationStatus.Approved
                  ? Icons.done
                  : model.status == NotificationStatus.Rejected
                      ? Icons.close
                      : Icons.campaign_outlined,
              color: Colors.white,
              size: 40,
            ),
          ),
          SizedBox(width: 10),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(model.content),
              SizedBox(height: 8),
              // Text(model.date.toString())
              Text('16:04 18/10/2021'),
            ],
          )
        ],
      ),
    );
  }
}
