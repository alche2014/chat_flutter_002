import 'package:chatapp/HR_app/Screens/Experience2/screen_experience2.dart';
import 'package:chatapp/HR_app/constants.dart';
import 'package:flutter/material.dart';

class Toptile_E1 extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CircleAvatar(
                  radius: 40,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(100),
                    child: Image(
                      image: AssetImage('assets/images/user1.png'),
                      width: 90,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Text(
                  'Name here',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                Text(
                  'Front-end & UI',
                  style: TextStyle(color: Colors.grey),
                ),
                SizedBox(height: 10),
                InkWell(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Experience2()));
                  },
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        'Edit',
                        style: TextStyle(color: kPrimaryColor),
                      ),
                      Icon(
                        Icons.edit,
                        color: kPrimaryColor,
                      )
                    ],
                  ),
                ),
      ],
    );
  }
}