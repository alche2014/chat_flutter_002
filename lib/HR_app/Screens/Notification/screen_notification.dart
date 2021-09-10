import 'package:chatapp/HR_app/Screens/Notification/Components/models.dart';
import 'package:chatapp/HR_app/Screens/Notification/Components/notification_card.dart';
import 'package:flutter/material.dart';
import 'package:grouped_list/grouped_list.dart';
import 'package:intl/intl.dart';

// class Notification extends StatelessWidget {

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//        appBar: AppBar(
//         centerTitle: true,
//         title: Text(
//           'Notifications',
//         ),
//         backgroundColor: Colors.transparent,
//         elevation: 0,
//         actions: [
//           IconButton(
//               icon: Icon(
//                 Icons.notifications,
//               ),
//               onPressed: () {})
//         ],
//       ),
//       body: Container(),
//     );
//   }
// }
class Notifications extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Notifications',
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
        actions: [
          IconButton(
              icon: Icon(
                Icons.notifications,
              ),
              onPressed: () {})
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: GroupedListView<NotificationModel, DateTime>(
          floatingHeader: true,
          elements: notificationlist,
          groupBy: (NotificationModel element) => element.date,
          groupComparator: (value1, value2) =>
              mygroup(value1, value2), //value2.compareTo(value1),
          itemComparator: (item1, item2) => mygroup1(
              item1.date, item2.date), //item1.date.compareTo(item2.date),
          order: GroupedListOrder.DESC,
          // useStickyGroupSeparators: true,
          groupSeparatorBuilder: (value) => Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
              Container(
                padding: EdgeInsets.symmetric(horizontal: 10),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.blue[100]),
                child: Text(
                  parse(value).toString(),
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ),
            ]),
          ),
          itemBuilder: (c, element) {
            return Container(
              // elevation: 8.0,
              // margin:
              //     EdgeInsets.symmetric(horizontal: 10.0, vertical: 6.0),
              child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: NotificationCard(
                    model: element,
                  )),
            );
          },
        ),

        // Column(
        //   crossAxisAlignment: CrossAxisAlignment.start,
        //   children: [
        //     Text('New Notificaton', style: TextStyle(color: Colors.grey[500], fontWeight: FontWeight.bold),),
        //     Expanded(
        //       child: ListView.builder(
        //         itemCount: notificationlist.length,
        //         itemBuilder: (context, index){
        //           return Column(
        //             children: [
        //               if(notificationlist[index].date == DateTime.september)
        //                 NotificationCard(notificationlist[index]),
        //             ],
        //           );
        //         }),
        //     ),
        //     Text('Earlier', style: TextStyle(color: Colors.grey[500], fontWeight: FontWeight.bold)),
        //      Expanded(
        //       child: ListView.builder(
        //         itemCount: notificationlist.length,
        //         itemBuilder: (context, index){
        //           return Column(
        //             children: [
        //               if(notificationlist[index].date == DateTime.august)
        //                 NotificationCard(notificationlist[index]),
        //             ],
        //           );
        //         }),
        //     ),
        //     // NotificationCard(),
        //     // NotificationCard(),
        //   ],
        // ),
      ),
    );
  }

  String parse(var model) {
    DateTime now = DateTime.now();
    String formattedDate = new DateFormat('yyyy-MM-dd').format(now);

    if (DateTime.parse(formattedDate) == model)
      return 'today';
    else
      return 'Earlier';
  }

  int mygroup(DateTime model, DateTime model1) {
    DateTime now = DateTime.now();
    String formattedDate = new DateFormat('yyyy-MM-dd').format(now);
    // print('$model   ' '$model1');
    if (model1.isAtSameMomentAs(model))
      return 0;
    else if (model1.isBefore(model)) return 0;
    else
    return 1;
  }

  int mygroup1(DateTime model, DateTime model1) {
    DateTime now = DateTime.now();
    String formattedDate = new DateFormat('yyyy-MM-dd').format(now);
    // print('n$model   ' 'n$model1');
    if (model.isAtSameMomentAs(DateTime.parse(formattedDate)))
      return 0;
    else if (model.isBefore(DateTime.parse(formattedDate))) return 0;
    else
    return 1;
  }
}