import 'package:chatapp/HR_app/Screens/MembersDetail/screen_member_details.dart';
import 'package:chatapp/HR_app/Screens/More/Componeents/more_card.dart';
import 'package:chatapp/HR_app/Screens/MyProfile/screen_my_profile.dart';
import 'package:chatapp/HR_app/Screens/Team/screen_team.dart';
import 'package:chatapp/HR_app/Screens/app_bar.dart';
import 'package:flutter/material.dart';

class More extends StatelessWidget {
  var nav1 = new MyProfile();
  var nav2 = new Team();
  // var nav2 = new Page31();

  String text1 = 'My Profile';
  String text2 = 'Team Profile';
  String text3 = 'Settings';
  String pic = 'assets/images/user.png';
  String pic2 = 'assets/images/person.jpg';
  String pic3 = 'assets/images/settings1.jpg';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: app_bar(titilee: 'More',leading: false,),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 10),
                child: MiniCardmore(text1, pic, nav1),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 10),
                child: MiniCardmore(text2, pic2, nav2),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 10),
                child: MiniCardmore(text3, pic3, null),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
