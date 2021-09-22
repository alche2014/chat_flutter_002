import 'package:chatapp/HR_app/Screens/Performance2/screen_overall_performance.dart';
import 'package:chatapp/HR_app/circular_bar.dart';
import 'package:chatapp/HR_app/constants.dart';
import 'package:flutter/material.dart';

class Performance2Card extends StatelessWidget {
  String text1;
  String text2;

  Performance2Card(this.text1, this.text2);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 10),
      child: Material(
        elevation: 3,
        borderRadius: BorderRadius.circular(10),
        color: MediaQuery.of(context).platformBrightness == Brightness.light
            ? Colors.white
            : kContentColorLightTheme.withOpacity(0.1),
        child: InkWell(
          borderRadius: BorderRadius.circular(10),
          onTap: (){
              Navigator.of(context).
              pushReplacement(MaterialPageRoute(builder: (contex) => Performance3())
              );
          },
          child: Container(
            padding: EdgeInsets.all(20),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(
                Radius.circular(10),
              ),
            // border: Border.all(color: Colors.grey.withOpacity(0.3), width: 2),  
            ),
            //==============content==================//
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      text1,
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(text2),
                  ],
                ),
                Container(
                  height: 30,
                  width: 30,
                  child: FittedBox(
                    fit: BoxFit.cover,
                    child: CircularBar(),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}