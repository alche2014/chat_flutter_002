import 'package:chatapp/HR_app/constants.dart';
import 'package:flutter/material.dart';

class CardMemberDetails extends StatelessWidget {
  var next;
  String text;
  String pic;
  CardMemberDetails(this.text, this.pic, this.next);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Material(
        elevation: 3,
        color: MediaQuery.of(context).platformBrightness == Brightness.light
            ? Colors.white
            : kContentColorLightTheme.withOpacity(0.1),
        borderRadius: BorderRadius.circular(10),
        child: InkWell(
          borderRadius: BorderRadius.circular(10),
          onTap: () {
            Navigator.of(context)
                .push(MaterialPageRoute(builder: (context) => next));
          },
          child: Container(
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(
                Radius.circular(10),
              ),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  child: Row(
                    children: [
                      CircleAvatar(
                        radius: 30,
                        backgroundColor:
                              MediaQuery.of(context).platformBrightness ==
                                      Brightness.light
                                  ? kContentColorDarkTheme
                                  : kContentColorLightTheme.withOpacity(0.1),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(100),
                          child: Image.asset(pic),
                        ),
                      ),
                      SizedBox(width: 10),
                      Text(text),
                    ],
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: MediaQuery.of(context).platformBrightness ==
                            Brightness.light
                        ? kContentColorDarkTheme
                        : kContentColorLightTheme.withOpacity(0.1),
                  ),
                  child: Icon(
                    Icons.keyboard_arrow_right_rounded,
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
