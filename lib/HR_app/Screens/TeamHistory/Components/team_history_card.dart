import 'package:flutter/material.dart';

class TeamHistoryCard extends StatelessWidget {
  bool islate = false;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30,vertical: 10),
      child: Material(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        elevation: 3,
        child: InkWell(
          borderRadius: BorderRadius.circular(10),
          hoverColor: Colors.red,
          // canRequestFocus: true,
          // splashColor: Colors.red,
          // highlightColor: Colors.red,
          onTap: (){},
          child: Container(
            margin: EdgeInsets.symmetric(horizontal: 3, vertical: 3),
            padding: EdgeInsets.all(20),
            decoration: BoxDecoration(
            //   boxShadow: [BoxShadow(
            //   color: Colors.grey,
            //   blurRadius: 1,
            //   // spreadRadius: 0,
            //   // offset: Offset(0, 0)
            // )],
                borderRadius: BorderRadius.circular(10), ),
            child: Column(
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: Image(
                            image: AssetImage('assets/images/user1.png'),
                            height: 60,
                            width: 60,
                          ),
                        ),
                        SizedBox(width: 10),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Text(
                              'Member Name',
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            SizedBox(height: 5),
                            Text(
                              '02-05-2021 Thu',
                              style: TextStyle(
                                  color: Colors.red[800],
                                  fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                      ],
                    ),
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 10, vertical: 6),
                      child: Text(islate == true ? 'Late' : 'On time'),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: islate == true ? Colors.red[50] : Colors.green[50]),
                    )
                  ],
                ),
                SizedBox(height: 20),
                Row(
                  children: [
                    Text('Checkin: '),
                    Text('09:25am'),
                    Spacer(),
                    Text('Checkout: '),
                    Text('06:00pm'),
                  ],
                ),
                SizedBox(height: 10),
                Row(
                  children: [
                    Text('Total Working Hours: '),
                    Text('6hr 20min'),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
