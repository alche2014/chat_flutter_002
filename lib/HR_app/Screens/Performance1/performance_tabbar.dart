import 'package:chatapp/HR_app/Screens/Notification/screen_notification.dart';
import 'package:chatapp/HR_app/Screens/Performance1/TeamPerformance/screen_team_performance.dart';
import 'package:chatapp/HR_app/Screens/app_bar.dart';
import 'package:flutter/material.dart';

class PerformanceTabBar extends StatefulWidget {
  @override
  _PerformanceTabBarState createState() => _PerformanceTabBarState();
}

class _PerformanceTabBarState extends State<PerformanceTabBar>
    with SingleTickerProviderStateMixin {
  TabController _controller;
  void initState() {
    super.initState();
    _controller = TabController(length: 2, vsync: this, initialIndex: 0);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Performance'),
        actions: <Widget>[
          IconButton(
            icon: Icon(
              Icons.notifications,
              // color: Colors.black,
            ),
            onPressed: () {
              Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => Notifications()));
            },
          )
        ],
        bottom: TabBar(
          // labelColor: ,
          controller: _controller,
          tabs: [
            Tab(text: 'Your Performance'),
            Tab(text: 'Team Performance'),
          ],
        ),
      ),
      body: TabBarView(
        controller: _controller,
        children: [
          Text('ahmad'),
          TeamPerformance(),
        ],
      ),
    );
  }
}
