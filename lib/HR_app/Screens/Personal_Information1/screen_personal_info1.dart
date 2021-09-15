import 'package:chatapp/HR_app/Screens/Personal_Information1/Components/form.dart';
import 'package:chatapp/HR_app/Screens/Personal_Information1/Components/top_tile.dart';
import 'package:flutter/material.dart';

class PersonalInformation1 extends StatelessWidget {
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
            FormTopTile(
              image: 'assets/images/user.png',
              name: 'User Name Here',
              designation: 'Front end & UI',
            ),
            SizedBox(height: 20),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                children: [
                  DisplayForm(),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
