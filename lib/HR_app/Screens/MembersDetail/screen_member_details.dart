import 'package:chatapp/HR_app/Screens/CheckinHistory/screen_checkin_history.dart';
import 'package:chatapp/HR_app/Screens/LeaveHistory2/screen_leave_history2.dart';
import 'package:chatapp/HR_app/Screens/MembersDetail/Components/MemberDetails_card.dart';
import 'package:chatapp/HR_app/Screens/Performance2/screen_performance2.dart';
import 'package:chatapp/HR_app/Screens/Personal_Information1/screen_personal_info1.dart';
import 'package:chatapp/HR_app/Screens/Personal_Information3/screen_personal_information3.dart';
import 'package:chatapp/HR_app/Screens/app_bar.dart';
import 'package:flutter/material.dart';

class MemberDetails extends StatelessWidget {
  var nav1 = new PersonalInfo3();
  var nav2 = new CheckinHistory();
  var nav3 = new Performance2();
  var nav4 = new LeaveHistory2();

  String text1 = 'Member Name';
  String text2 = 'Checkin History';
  String text3 = 'Performance History';
  String text4 = 'Request History';
  String pic = 'assets/images/user.png';
  String pic2 = 'assets/images/person.jpg';
  // String pic3 = 'assets/images/settings1.jpg';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: app_bar(titilee: 'Members Details'),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: Column(
            children: [
              CardMemberDetails(text1, pic, nav1),
              CardMemberDetails(text2, pic2, nav2),
              CardMemberDetails(text3, pic2, nav3),
              CardMemberDetails(text4, pic2, nav4),
            ],
          ),
        ),
      ),
    );
  }
}
