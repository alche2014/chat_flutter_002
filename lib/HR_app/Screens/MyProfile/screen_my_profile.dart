import 'package:chatapp/HR_app/Screens/MyProfile/Components/my_profile_card.dart';
import 'package:chatapp/HR_app/Screens/MyProfile/Components/top_tile.dart';
import 'package:chatapp/HR_app/Screens/Personal_Information1/screen_personal_info1.dart';
import 'package:flutter/material.dart';

class MyProfile extends StatelessWidget {
  String text1 = 'Personal Information';
  String text2 = 'Educatoin Information';
  String text3 = 'Experience Information';
  var next= new PersonalInformation1();
  var next1; //= new Page35();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('My Profile'),
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 15),
          child: Column(
            children: [
              SizedBox(height: 10),
//------------------------child 1-----------------------------------
              TopTile(
                image: 'assets/images/user.png',
                name: 'User Name Here',
                designation: 'Front end & UI',
              ),
//------------------------child 2-----------------------------------
              Container(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    MyProfileCard(text1, next),
                    MyProfileCard(text2, next),
                    MyProfileCard(text3, next),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
