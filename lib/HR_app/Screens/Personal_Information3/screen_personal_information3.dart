import 'package:chatapp/HR_app/Screens/Personal_Information3/Components/form.dart';
import 'package:chatapp/HR_app/Screens/Personal_Information3/Components/toptile.dart';
import 'package:flutter/material.dart';

class PersonalInfo3 extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Personal Information'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            PInfo3TopTile(
              image: 'assets/images/user.png',
              name: 'User Name Here',
              designation: 'Front end & UI',
            ),
            SizedBox(height: 20),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                children: [
                  PInfo3Form(),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}