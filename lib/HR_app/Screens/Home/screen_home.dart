import 'package:chatapp/HR_app/Screens/Announcemets/Components/card.dart';
import 'package:chatapp/HR_app/Screens/Announcemets/Components/model.dart';
import 'package:chatapp/HR_app/Screens/Announcemets/screen_announcement.dart';
import 'package:chatapp/HR_app/Screens/Birthday/Components/model.dart';
import 'package:chatapp/HR_app/Screens/Birthday/screen_birthday.dart';
import 'package:chatapp/HR_app/Screens/CheckinHistory/Components/linear_bar.dart';
import 'package:chatapp/HR_app/Screens/CheckinHistory/screen_checkin_history.dart';
import 'package:chatapp/HR_app/Screens/Events/ScreenEventCards/Components/model.dart';
import 'package:chatapp/HR_app/Screens/Events/ScreenEventCards/screen_event_cards.dart';
import 'package:chatapp/HR_app/Screens/Home/Components/Leave_Holiday_card.dart';
import 'package:chatapp/HR_app/Screens/LeaveManagement/screen_leave_management.dart';
import 'package:chatapp/HR_app/Screens/Notification/screen_notification.dart';
import 'package:chatapp/HR_app/Screens/TeamHistory/screen_team_history.dart';
import 'package:chatapp/HR_app/constants.dart';
import 'package:flutter/material.dart';

class Pg19_HomePage extends StatelessWidget {
  List<Leave_HolidayCard> L_list = [
    Leave_HolidayCard('Anual Leave', '20 anual leaves pending'),
    Leave_HolidayCard('Casual Leave', '20 anual leaves pending'),
    Leave_HolidayCard('Sick Leave', '20 anual leaves pending')
  ];

  List<Leave_HolidayCard> Holiday_list = [
    Leave_HolidayCard('Iqbal Day', '20/10/2021'),
    Leave_HolidayCard('Pakistan Independance Day', '20/10/2021'),
    Leave_HolidayCard('Labour Day', '20/10/2021')
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Container(
            height: 350,
//--------------------Containers above red Margin-------------------
            child: Stack(
              children: [
                Positioned(
                  top: 0,
                  left: 0,
                  right: 0,
                  child: Container(
                    height: 260,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('assets/images/forest.jpg'),
                        fit: BoxFit.cover,
                      ),
                    ),
                    child: Column(
                      children: [
                        SizedBox(
                          height: 20,
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 20),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              IconButton(
                                icon: Icon(
                                  Icons.notifications,
                                  color: Colors.white,
                                ),
                                onPressed: () {
                                  Navigator.of(context).push(MaterialPageRoute(
                                      builder: (context) => Notifications()));
                                },
                              ),
                            ],
                          ),
                        ),
                        CircleAvatar(
                          backgroundImage:
                              AssetImage('assets/images/user1.png'),
                          // minRadius: 5,
                          maxRadius: 40,
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          'Name Here',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          'Front-End & UI',
                          style: TextStyle(
                            color: Colors.grey,
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                Positioned(
                  top: 220,
                  left: 0,
                  right: 0,
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(35),
                        topRight: Radius.circular(35),
                      ),
                      // color: Colors.red,
                      // color: Colors.grey[50],
                      color: Theme.of(context).scaffoldBackgroundColor,
                    ),
                    height: 100,
                  ),
                ),
                Positioned(
                  top: 190,
                  left: 0,
                  right: 0,
                  child: Container(
                    height: 140,
                    width: 100,
                    margin: EdgeInsets.symmetric(horizontal: 30),
                    decoration: BoxDecoration(
                      border: Border(
                        bottom: BorderSide(
                          color: kSecondaryColor,
                          width: 3,
                        ),
                      ),
                      color: Colors.transparent,
                    ),
                    child: Card(
                      // color: Colors.blue,
                      // color: Colors.white,
                      elevation: 5,
                      color: Theme.of(context).scaffoldBackgroundColor,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 20, vertical: 10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Check In',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 15),
                                ),
                                Text(
                                  'You haven`t clock in yet',
                                  style: TextStyle(
                                      fontSize: 10, color: Colors.grey),
                                ),
                                Text(
                                  '00 : 00 :00 HRS',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 15),
                                ),
                                TextButton(
                                  onPressed: () {
                                    Navigator.of(context).push(
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                CheckinHistory()));
                                  },
                                  child: Text(
                                    'View History',
                                    style: TextStyle(color: kSecondaryColor),
                                  ),
                                )
                              ],
                            ),
                            Flexible(
                              child: Container(
                                padding: EdgeInsets.all(5),
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(
                                      100,
                                    ),
                                    border: Border.all(
                                        color: kPrimaryColor, width: 5)),
                                child: SizedBox(
                                  height: 90,
                                  child: ElevatedButton(
                                    onPressed: () {},
                                    child: Text(
                                      'Check In',
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 14),
                                    ),
                                    style: ElevatedButton.styleFrom(
                                      primary: kPrimaryColor,
                                      shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(100),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
//-------------------Announcement Card-------------------------
          ListTile(
            leading: Image(
              image: AssetImage('assets/images/orange.png'),
              height: 50,
            ),
            title: Text('Announcements'),
            trailing: TextButton(
              onPressed: () {
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => Announcements()));
              },
              child: Text(
                'View',
                style: TextStyle(color: Colors.red[800]),
              ),
            ),
          ),
          Container(
            height: 250,
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: myAnnouncement.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    child: AnnouncementCard(model: myAnnouncement[index],fulltext: false,)//myAnnouncement[index],
                  );
                } //=> myAnnouncement[index],
                ),
          ),
//-----------------Birthday Card-----------------
          ListTile(
            leading: Image(
              image: AssetImage('assets/images/lightgreen.png'),
              height: 50,
            ),
            title: Text('Birthday'),
            trailing: TextButton(
              onPressed: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) => Birthday()));
              },
              child: Text(
                'View',
                style: TextStyle(color: Colors.red[800]),
              ),
            ),
          ),
          Container(
              height: 130,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: myBirthday.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    child: myBirthday[index],
                  );
                },
              )
              // myBirthday[index]),
              ),
//-----------------Leave Card-----------------------
          ListTile(
            leading: Image(
              image: AssetImage('assets/images/orange.png'),
              height: 50,
            ),
            title: Text('Leave Management'),
            trailing: TextButton(
              onPressed: () {
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => LeaveManagement()));
              },
              child: Text(
                'View',
                style: TextStyle(color: Colors.red[800]),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Material(
              elevation: 3,
              borderRadius: BorderRadius.circular(10),
              color:
                  MediaQuery.of(context).platformBrightness == Brightness.light
                      ? Colors.white
                      : kContentColorLightTheme.withOpacity(0.1),
              child: Container(
                // margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  // color: Colors.white,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      height: 230,
                      child: ListView.builder(
                        physics: NeverScrollableScrollPhysics(),
                        itemCount: L_list.length,
                        itemBuilder: (context, index) => L_list[index],
                      ),
                    ),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: kPrimaryColor,
                      ),
                      onPressed: () {},
                      child: Text(
                        'Apply Leave',
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
//-----------------Linear Progress bar---------------------
          ListTile(
            leading: Image(
              image: AssetImage('assets/images/green.png'),
              height: 50,
            ),
            title: Text('Team Member'),
            trailing: TextButton(
              onPressed: () {
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => TeamHistory()));
              },
              child: Text(
                'View',
                style: TextStyle(color: Colors.red[800]),
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.all(10),
            child: LinearBar('Today'),
          ),
//---------------------Events Card---------------------
          ListTile(
            leading: Image(
              image: AssetImage('assets/images/blue.png'),
              height: 50,
            ),
            title: Text('Events'),
            trailing: TextButton(
              onPressed: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) => Events()));
              },
              child: Text(
                'View',
                style: TextStyle(color: Colors.red[800]),
              ),
            ),
          ),
          Container(
            height: 250,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: myevents.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: myevents[index],
                );
              }, //=> myevents[index],
            ),
          ),
//----------------------Upcomming Holidays-----------------------
          ListTile(
            leading: Image(
              image: AssetImage('assets/images/lightblue.png'),
              height: 50,
            ),
            title: Text('Upcoming Holiday'),
            trailing: TextButton(
              onPressed: () {},
              child: Text(
                'View',
                style: TextStyle(color: Colors.red[800]),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
            child: Material(
              elevation: 3,
              borderRadius: BorderRadius.circular(10),
              color:
                  MediaQuery.of(context).platformBrightness == Brightness.light
                      ? Colors.white
                      : kContentColorLightTheme.withOpacity(0.1),
              child: Container(
                // margin: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                padding: EdgeInsets.all(10),
                height: 230,

                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  // color: Colors.white,
                ),
                child: ListView.builder(
                  physics: NeverScrollableScrollPhysics(),
                  itemCount: 3,
                  itemBuilder: (context, index) => Holiday_list[index],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
