import 'package:chatapp/HR_app/Screens/Announcemets/screen_announcement.dart';
import 'package:chatapp/HR_app/Screens/Birthday/screen_birthday.dart';
import 'package:chatapp/HR_app/Screens/CheckinHistory/screen_checkin_history.dart';
import 'package:chatapp/HR_app/Screens/Events/ScreenEventCards/screen_event_cards.dart';
import 'package:chatapp/HR_app/Screens/Events/ScreenEvents2/JoindMembers/screen_joind_members.dart';
import 'package:chatapp/HR_app/Screens/Events/ScreenEvents2/screen_events2.dart';
import 'package:chatapp/HR_app/Screens/Home/screen_home.dart';
import 'package:chatapp/HR_app/Screens/LeaveHistory/Components/leave_history_card.dart';
import 'package:chatapp/HR_app/Screens/LeaveHistory/screen_leave_history.dart';
import 'package:chatapp/HR_app/Screens/LeaveHistory2/screen_leave_history2.dart';
import 'package:chatapp/HR_app/Screens/LeaveManagement/Components/Card.dart';
import 'package:chatapp/HR_app/Screens/LeaveManagement/screen_leave_management.dart';
import 'package:chatapp/HR_app/Screens/More/screen_more.dart';
import 'package:chatapp/HR_app/Screens/Notification/screen_notification.dart';
import 'package:chatapp/HR_app/Screens/Performance1/performance_tabbar.dart';
import 'package:chatapp/HR_app/Screens/Performance2/screen_performance2.dart';
import 'package:chatapp/HR_app/Screens/Request/screen_request.dart';
import 'package:chatapp/HR_app/Screens/TeamRequest/screen_team_request.dart';
import 'package:chatapp/HR_app/Screens/TeamRequest/screen_team_request2.dart';
import 'package:flutter/material.dart';

class Nav extends StatefulWidget {
  @override
  _NavState createState() => _NavState();
}

class _NavState extends State<Nav> {
  int _currentindex = 0;

  final tabs = [
    Center(child: Pg19_HomePage()),
    Center(child: PerformanceTabBar()),
    Center(child: Request()),
    Center(child: More()),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: tabs[_currentindex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentindex,
        type: BottomNavigationBarType.fixed,
        // fixedColor: Colors.red[800],
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
