import 'package:chatapp/HR_app/Screens/MembersDetail/screen_member_details.dart';
import 'package:flutter/material.dart';

class MyTeam {
  MyTeam({this.name, this.designation, this.image});
  String name;
  String designation;
  String image;
  var press =  new MemberDetails();
}

List<MyTeam> myteam = [
  MyTeam(
    name: 'Lee Williamson',
    designation: 'Designation',
    image: 'assets/images/user1.png',
  ),
  MyTeam(
    name: 'Lee Williamson',
    designation: 'Designation',
    image: 'assets/images/user1.png',
  ),
  MyTeam(
    name: 'Lee Williamson',
    designation: 'Designation',
    image: 'assets/images/user1.png',
  ),
  MyTeam(
    name: 'Lee Williamson',
    designation: 'Designation',
    image: 'assets/images/user1.png',
  ),
  MyTeam(
    name: 'Lee Williamson',
    designation: 'Designation',
    image: 'assets/images/user1.png',
  ),
];
