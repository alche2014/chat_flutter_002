import 'package:chatapp/HR_app/Screens/Performance1/TeamPerformance/components/model.dart';
import 'package:chatapp/HR_app/Screens/Performance2/screen_performance2.dart';
import 'package:chatapp/HR_app/constants.dart';
import 'package:flutter/material.dart';

class TeamPerformanceCard extends StatelessWidget {
  TeamPerformanceCard({this.model});
  // String image ;
  // String name;
  // String designation;
  var model;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: Material(
        elevation: 3,
        borderRadius: BorderRadius.circular(10),
        color: MediaQuery.of(context).platformBrightness == Brightness.light
            ? Colors.white
            : kContentColorLightTheme.withOpacity(0.1),
        child: InkWell(
          borderRadius: BorderRadius.circular(10),
          onTap: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => model.press));
          },
          child: ListTile(
            leading: Material(
              elevation: 1,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(100),
              ),
              color: MediaQuery.of(context).platformBrightness ==
                      Brightness.light
                  ? kPrimaryColor.withOpacity(0.1)
                  : kContentColorLightTheme.withOpacity(0.1),
              child: CircleAvatar(
                radius: 30,
                backgroundColor: Colors.transparent,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(100),
                  clipBehavior: Clip.antiAlias,
                  child: Image.asset(
                    model.image,
                    width: 60,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            title: Text(model.name),
            subtitle: Text(model.designation),
          ),
        ),
      ),
    );
  }
}