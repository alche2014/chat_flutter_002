import 'package:chatapp/HR_app/Screens/MembersDetail/Components/MemberDetails_card.dart';
import 'package:chatapp/HR_app/Screens/More/Componeents/more_card.dart';
import 'package:chatapp/HR_app/Screens/MyProfile/screen_my_profile.dart';
import 'package:chatapp/HR_app/Screens/app_bar.dart';
import 'package:flutter/material.dart';

class MemberDetails extends StatelessWidget {
  // var nav = new MyProfile();
  // var nav2 = new Page31();

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
      appBar: app_bar('Members Details'),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: Column(
            children: [
              CardMemberDetails(text1, pic, null),
              CardMemberDetails(text2, pic2, null),
              CardMemberDetails(text3, pic2, null),
              CardMemberDetails(text4, pic2, null),
            ],
          ),
        ),
      ),
    );
  }
}


