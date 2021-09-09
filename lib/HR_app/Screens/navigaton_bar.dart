import 'package:chatapp/HR_app/Screens/CheckinHistory/screen_checkin_history.dart';
import 'package:chatapp/HR_app/Screens/Notification/screen_notification.dart';
import 'package:chatapp/HR_app/Screens/Request/screen_request.dart';
import 'package:chatapp/HR_app/Screens/TeamHistory/screen_team_history.dart';
import 'package:flutter/material.dart';

class Nav extends StatefulWidget {
  @override
  _NavState createState() => _NavState();
}

class _NavState extends State<Nav> {
  int _currentindex = 0;

  final tabs = [
    Center(child: TeamHistory()),
    Center(child: Notifications()),
    Center(child: Request()),
    Center(child: CheckinHistory()),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: tabs[_currentindex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentindex,
        type: BottomNavigationBarType.fixed,
        fixedColor: Colors.red[800],
        items: [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
            ),
            title: Text('home'),
            // backgroundColor: Colors.white,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.bar_chart),
            title: Text('Performance'),
            // backgroundColor: Colors.blue,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_add),
            title: Text('Requests'),
            // backgroundColor: Colors.blue,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.more_horiz_outlined),
            title: Text('More'),
            // backgroundColor: Colors.blue,
          ),
        ],
        onTap: (index) {
          setState(() {
            _currentindex = index;
          });
        },
      ),
    );
  }
}
