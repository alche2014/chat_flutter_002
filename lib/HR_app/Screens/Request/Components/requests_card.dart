import 'package:flutter/material.dart';

class RequestCard extends StatelessWidget {
  String text1;
  String text2;
  String status;

  RequestCard({this.text1, this.text2, this.status});

  @override
  Widget build(BuildContext context) {
    return Container(
      //--------------card body--------------------
      margin: const EdgeInsets.all(10),
      padding: EdgeInsets.all(20),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(
          Radius.circular(10),
        ),
        color: Colors.white,
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
              Container(
                height: 40,
                width: 100,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: status == 'Approved'
                      ? Color(0xffD6FBE0)
                      : Color(0xffF8E7E9),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Text(
                    status,
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 30.0),
          //----------------------message--------------------
          Text(
            text2,
            style: TextStyle(
              fontSize: 15,
            ),
          ),
          SizedBox(height: 30),
          Text(
            '14:01 20/10/2020',
            style: TextStyle(
              fontSize: 10,
              color: Colors.grey,
            ),
          ),
        ],
      ),
    );
  }
}
