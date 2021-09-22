import 'package:chatapp/HR_app/Screens/Performance2/Component/performance2_card.dart';
import 'package:chatapp/HR_app/Screens/app_bar.dart';
import 'package:flutter/material.dart';

class Performance2 extends StatelessWidget {
  String text1 = 'This Month';
  String text2 = 'January';
  String text3 = 'December';
  String text4 = 'Novermber';
  String subtitle = 'Eveluated by manager name';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: app_bar(titilee: 'Performance'),
      body: Column(
        children: [
          Performance2Card(text1, subtitle),
          Performance2Card(text2, subtitle),
          Performance2Card(text3, subtitle),
          Performance2Card(text4, subtitle),
        ],
      ),
    );
  }
}
