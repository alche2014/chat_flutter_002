//.................custom appbar...............

import 'package:chatapp/HR_app/Screens/Notification/screen_notification.dart';
import 'package:flutter/material.dart';

class app_bar extends StatelessWidget implements PreferredSizeWidget {
  final String titilee;
  app_bar(this.titilee);

  @override
  Size get preferredSize => Size.fromHeight(60.0);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(titilee),
        actions: <Widget>[
          IconButton(
            icon: Icon(
              Icons.notifications,
              // color: Colors.black,
            ),
            onPressed: () {
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (context) => Notifications()));
            },
          )
        ],
      ),
    );
  }
}
