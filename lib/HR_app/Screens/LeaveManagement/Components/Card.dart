import 'package:chatapp/HR_app/Screens/LeaveManagement/Components/show_dialog.dart';
import 'package:chatapp/HR_app/constants.dart';
import 'package:flutter/material.dart';

class LeaveManagementCard extends StatelessWidget {
  String text;
  LeaveManagementCard(this.text);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 10),
      child: Material(
        elevation: 3,
        borderRadius: BorderRadius.circular(10),
        color: MediaQuery.of(context).platformBrightness == Brightness.light
            ? Colors.white
            : kContentColorLightTheme.withOpacity(0.1),
        child: InkWell(
          borderRadius: BorderRadius.circular(10),
          onTap: () {},
          child: Container(
            // width: 350,
            // height: 130,
            // margin: EdgeInsets.all(20),
            padding: EdgeInsets.symmetric(vertical: 15, horizontal: 5),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(
                Radius.circular(20),
              ),
              // color: Colors.white,
            ),
            child: Row(
              children: [
                //-----------leading image----------------------
                CircleAvatar(
                  radius: 30,
                  backgroundColor: kPrimaryColor.withOpacity(0.1),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: Image.asset("assets/images/chain.png"),
                  ),
                ),
                SizedBox(width: 20),
                //--------------text & button after imate---------------------
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(text),
                    SizedBox(height: 5),
                    Text(
                      '20 anual leaves pending',
                      style: TextStyle(color: Colors.grey, fontSize: 10),
                    ),
                    SizedBox(height: 10),
                    TextButton(
                      onPressed: () {
                        //-------------1st Dialog for apply button----------------
                        LM_Dialog(context);
                      },
                      child: Text(
                        'Apply Now',
                        style: TextStyle(color: kPrimaryColor, fontSize: 13),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
  
//.................leave card used in home page....................................

// class MiniCardleave1 extends StatelessWidget {
//   String text;
//   String text1;
//   MiniCardleave1(this.text, this.text1);

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       color: Colors.white,
//       child: ListTile(
//         leading: CircleAvatar(
//           radius: 30,
//           backgroundColor: Colors.grey[100],
//           child: ClipRRect(
//             borderRadius: BorderRadius.circular(100),
//             child: Image.asset("assets/image/ic.jpg"),
//           ),
//         ),
//         title: Text(text),
//         subtitle: Text(
//           text1,
//           style: TextStyle(color: Colors.grey, fontSize: 10),
//         ),
//       ),
//     );
//   }
// }