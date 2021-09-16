import 'package:chatapp/HR_app/constants.dart';
import 'package:flutter/material.dart';

class TeamRequestCard extends StatelessWidget {
  String text1;
  String text2;
  // String status;

  TeamRequestCard({this.text1, this.text2});

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
          // margin: const EdgeInsets.all(10),
          padding: EdgeInsets.all(20),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.all(
              Radius.circular(10),
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              //-------------title and status------------------------
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    text1,
                    style: TextStyle(
                      color: Colors.red[800], //color red
                      fontWeight: FontWeight.bold,
                      fontSize: 17,
                    ),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: Text(
                      'View',
                      style: TextStyle(decoration: TextDecoration.underline),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 10.0),
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
