import 'package:flutter/material.dart';

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
      color: Colors.white,
      child: InkWell(
        borderRadius: BorderRadius.circular(10),
        onTap: () {},
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
                        Text(date.month.toString(),
                            style: TextStyle(
                                color: Colors.red[800], fontSize: 15)),
                      ],
                    ),
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
                        Text(date.toString(),//'16:04 20/10/2021',
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
