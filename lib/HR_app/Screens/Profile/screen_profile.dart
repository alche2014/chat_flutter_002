import 'package:chatapp/HR_app/constants.dart';
import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Column(
        children: [
          Align(
            alignment: Alignment.centerRight,
            child: InkWell(
              onTap: (){},
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text('Edit', style: TextStyle(color: kPrimaryColor),),
                  Icon(Icons.edit, color: kPrimaryColor,),
                ],
              ),
            ),
          ),
          TopTile(
                  image: 'assets/images/user.png',
                  name: 'Employee ID #12221',
                  designation: 'Front end & UI',
                ),
        ],
      ),
    );
  }
}




class TopTile extends StatelessWidget {
  TopTile({this.image, this.name, this.designation});
  var image;
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
            flex: 2,
            child: CircleAvatar(
              backgroundColor: kPrimaryColor,
              radius: 50,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(100),
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
                SizedBox(height: 10),
                Text(
                  designation,
                  style: TextStyle(fontSize: 14, color: Colors.grey),
                ),
              ],
            ),
          ),
          Flexible(flex: 1, child: Container()),
        ],
      ),
    );
  }
}
