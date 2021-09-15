import 'package:chatapp/HR_app/Screens/Personal_Informatin2/screen_personal_info2.dart';
import 'package:chatapp/HR_app/constants.dart';
import 'package:flutter/material.dart';

class FormTopTile extends StatelessWidget {
  FormTopTile({this.image, this.name, this.designation});
  String image;
  String name;
  String designation;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(5),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Flexible(
            flex: 1,
            child: CircleAvatar(
              radius: 50,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(70),
                child: Image(image: AssetImage(image), width: 100),
              ),
            ),
          ),
          // SizedBox(width: 10),
          Flexible(
            flex: 2,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  name,
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                ),
                Text(
                  designation,
                  style: TextStyle(fontSize: 14, color: Colors.grey),
                ),
              ],
            ),
          ),
          Flexible(
            flex: 1,
            child: InkWell(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => PersonalInformation2()));
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
          ),
        ],
      ),
    );
  }
}
