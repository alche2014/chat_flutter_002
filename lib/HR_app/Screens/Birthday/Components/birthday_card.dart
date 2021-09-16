import 'package:chatapp/HR_app/constants.dart';
import 'package:flutter/material.dart';
import 'package:date_format/date_format.dart';

class BirthdayCard extends StatelessWidget {
  BirthdayCard({this.name, this.date, this.image});
  String name;
  DateTime date;
  String image;
  @override
  Widget build(BuildContext context) {
    //------------main container of card----------------------------
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Material(
        elevation: 3,
        borderRadius: BorderRadius.circular(10),
        color: MediaQuery.of(context).platformBrightness == Brightness.light
            ? Colors.white
            : kContentColorLightTheme.withOpacity(0.1),
        child: Container(
          width: MediaQuery.of(context).size.width * 0.9,
          // height: 140,
          // margin: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
          padding: EdgeInsets.symmetric(vertical: 20, horizontal: 10),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.all(
              Radius.circular(20),
            ),
            // color: Colors.white,
          ),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  //-----------leading image of card--------------------
                  ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Image.asset(image),
                  ),
                  SizedBox(width: 20),
                  //-----------text in card-------------------
                  Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(name),
                      SizedBox(
                        height: 5,
                      ),
                      Row(
                        children: [
                          Icon(
                            Icons.date_range_outlined,
                            size: 18,
                          ),
                          Text(formatDate(date, [d, '-', M, '-', yyyy])
                              .toString()),
                        ],
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        date.difference(DateTime.now()).inDays.toString() +
                            ' days',
                        //'3 day',
                        style: TextStyle(color: kSecondaryColor),
                      ),
                    ],
                  ),
                ],
              ),
              //-----------traling celebration icon--------------
              IconButton(
                icon: Icon(
                  Icons.celebration,
                  size: 40,
                  color: kPrimaryColor,
                ),
                onPressed: () {
                  //-----------------dialog box ------------------
                  showDialog(
                    context: context,
                    builder: (context) => AlertDialog(
                      backgroundColor:
                          MediaQuery.of(context).platformBrightness ==
                                  Brightness.light
                              ? Colors.white
                              : kContentColorLightTheme,
                      title: Text('Hamza Ali'),
                      content: Text('Happy Birthday'),
                      actions: [
                        TextButton(
                          onPressed: () {
                            Navigator.of(context).pop();
                          },
                          child: Text(
                            'Okay',
                            style: TextStyle(color: kPrimaryColor),
                          ),
                        )
                      ],
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
