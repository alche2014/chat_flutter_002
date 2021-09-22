import 'package:chatapp/HR_app/Screens/Experience1/Components/chipmaker_E1.dart';
import 'package:chatapp/HR_app/Screens/Experience1/Components/toptile.dart';
import 'package:chatapp/HR_app/Screens/MyProfile/Components/top_tile.dart';
import 'package:chatapp/HR_app/Screens/app_bar.dart';
import 'package:chatapp/HR_app/constants.dart';
import 'package:flutter/material.dart';

class Experience1 extends StatefulWidget {
  @override
  _Experience1State createState() => _Experience1State();
}

class _Experience1State extends State<Experience1> {
  var dropdownValue;
  var dropdownValue2;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: app_bar(titilee: 'Experience'),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Form(
            child: Column(
              children: [
//---------------------Profile-------------------
                Toptile_E1(),
                SizedBox(height: 20),
//---------------------Experience-------------------
                TextFormField(
                  // controller: phone,

                  decoration: InputDecoration(
                    enabled: false,
                    hintText: 'Experience',
                    hintStyle: TextStyle(color: Colors.grey),
                    filled: true,
                    suffixText: 'YRS',
                    fillColor: MediaQuery.of(context).platformBrightness ==
                            Brightness.light
                        ? kContentColorDarkTheme.withOpacity(0.1)
                        : kContentColorLightTheme.withOpacity(0.1),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(color: Colors.grey, width: 2),
                    ),
                  ),
                  keyboardType: TextInputType.number,
                ),
                SizedBox(height: 10),
//--------------Skills chips----------------------
                Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'Skills',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                    )),
                Chipmaker_E1(),
                // Chipmaker_E1.choosed.isNotEmpty
                //     ? Chipmaker_E1()
                //     : SizedBox(height: 20),
//------------------Education----------
                TextFormField(
                  // controller: name,
                  decoration: InputDecoration(
                    enabled: false,
                    hintText: 'Education',
                    hintStyle: TextStyle(color: Colors.grey),
                    filled: true,
                    // fillColor: Colors.white,
                    fillColor: MediaQuery.of(context).platformBrightness ==
                            Brightness.light
                        ? kContentColorDarkTheme.withOpacity(0.1)
                        : kContentColorLightTheme.withOpacity(0.1),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(color: Colors.grey, width: 2),
                    ),
                  ),
                ),
                SizedBox(height: 10),

//-------------------------interest dropdown------------
                TextFormField(
                  // controller: name,
                  decoration: InputDecoration(
                    enabled: false,
                    hintText: 'Interest',
                    hintStyle: TextStyle(color: Colors.grey),
                    filled: true,
                    // fillColor: Colors.white,
                    fillColor: MediaQuery.of(context).platformBrightness ==
                            Brightness.light
                        ? kContentColorDarkTheme.withOpacity(0.1)
                        : kContentColorLightTheme.withOpacity(0.1),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(color: Colors.grey, width: 2),
                    ),
                  ),
                ),
                SizedBox(height: 10),
//--------------------------About-----------------------
                TextFormField(
                  enabled: false,
                  maxLines: 5,
                  decoration: InputDecoration(
                    hintText: 'About',

                    hintStyle: TextStyle(color: Colors.grey),
                    filled: true,
                    // fillColor: Colors.white,
                    fillColor: MediaQuery.of(context).platformBrightness ==
                            Brightness.light
                        ? kContentColorDarkTheme.withOpacity(0.1)
                        : kContentColorLightTheme.withOpacity(0.1),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(color: Colors.grey, width: 2),
                    ),
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
