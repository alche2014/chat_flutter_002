import 'package:chatapp/HR_app/Screens/Events/ScreenEvents2/screen_events2.dart';
import 'package:chatapp/HR_app/constants.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class EventCard extends StatelessWidget {
  EventCard({this.text, this.date, this.image});
  String text;
  String image;
  var date;
  @override
  Widget build(BuildContext context) {
    return Material(
      borderRadius: BorderRadius.circular(10),
      elevation: 3,
      color: MediaQuery.of(context).platformBrightness == Brightness.light
          ? kContentColorDarkTheme
          : kContentColorLightTheme.withOpacity(0.1),
      child: InkWell(
        borderRadius: BorderRadius.circular(10),
        onTap: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => Events2()));
        },
        child: Container(
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(10)),
          clipBehavior: Clip.antiAlias,
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              //--------------image block----------------------
              Container(
                height: MediaQuery.of(context).size.height * 0.18,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(image),
                    // height: MediaQuery.of(context).size.height *0.17,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              //---------text below picture---------------
              Padding(
                padding: const EdgeInsets.fromLTRB(10, 0, 10, 10),
                child: Row(
                  children: [
                    Column(
                      children: [
                        Text(
                          date.day.toString(),
                          style: TextStyle(fontSize: 38),
                        ),
                        Text(DateFormat.MMM().format(date).toString(),
                            style: TextStyle(
                                color: Colors.red[800], fontSize: 15)),
                      ],
                    ),
                    SizedBox(width: 10),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          text,
                          style: TextStyle(
                            fontSize: 16,
                            color: Colors.red[800],
                          ),
                        ),
                        SizedBox(height: 6),
                        Text(date.toString(), //'16:04 20/10/2021',
                            style: TextStyle(color: Colors.grey)),
                      ],
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
