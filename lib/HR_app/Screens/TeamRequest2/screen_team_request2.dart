import 'package:chatapp/HR_app/Screens/app_bar.dart';
import 'package:chatapp/HR_app/constants.dart';
import 'package:flutter/material.dart';

class TeamRequest2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: app_bar('Team Request'),
      body: SingleChildScrollView(
        physics: ScrollPhysics(),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              InkWell(
                onTap: () {},
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text('Filter',
                        style: TextStyle(fontWeight: FontWeight.bold)),
                    SizedBox(width: 2),
                    Icon(Icons.tune),
                  ],
                ),
              ),
              TeamRequest2Card(
                text1: 'Request For Laptop',
                text2:
                    'Hello guys we have discussed about post-corona vacation plan and our decision is to go to bali',
                designation: 'Designation',
                name: 'Lee Williamson',
                image: 'assets/images/user1.png',
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class TeamRequest2Card extends StatelessWidget {
  String text1;
  String text2;
  String designation;
  String name;
  String image;
  // String status;

  TeamRequest2Card(
      {this.text1, this.text2, this.designation, this.image, this.name});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Material(
        borderRadius: BorderRadius.all(
          Radius.circular(10),
        ),
        elevation: 3,
        color: MediaQuery.of(context).platformBrightness == Brightness.light
            ? Colors.white
            : kContentColorLightTheme.withOpacity(0.1),
        child: Container(
          //--------------card body--------------------
          padding: EdgeInsets.all(20),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.all(
              Radius.circular(10),
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              //-------------title ------------------------
              Text(
                text1,
                style: TextStyle(
                  color: Colors.red[800], //color red
                  fontWeight: FontWeight.bold,
                  fontSize: 17,
                ),
              ),
              SizedBox(height: 10.0),

              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  CircleAvatar(
                    radius: 30,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(70),
                      child: Image(image: AssetImage(image), width: 60),
                    ),
                  ),
                  SizedBox(width: 10),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        name,
                        style: TextStyle(
                            fontSize: 14, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        designation,
                        style: TextStyle(fontSize: 14, color: Colors.grey),
                      ),
                    ],
                  ),
                ],
              ),
              //----------------------message--------------------
              Text(
                text2,
                style: TextStyle(
                  fontSize: 15,
                ),
              ),
              SizedBox(height: 10),
              Text(
                '14:01 20/10/2020',
                style: TextStyle(
                  fontSize: 10,
                  color: Colors.grey,
                ),
              ),
              SizedBox(height: 10),
              //---------------------buttons---------------------
              Row(
                children: [
                  ElevatedButton(
                    onPressed: () {},
                    child: Text('Reject'),
                    style: ElevatedButton.styleFrom(
                        primary: Colors.red[800],
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        )),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  ElevatedButton(
                    onPressed: () {},
                    child: Text('Approve'),
                    style: ElevatedButton.styleFrom(
                      primary: Colors.green[700],
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
