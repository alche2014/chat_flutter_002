import 'package:chatapp/HR_app/Screens/Experience1/screen_experience1.dart';
import 'package:chatapp/HR_app/Screens/Experience2/Components/chipmaker.dart';
import 'package:chatapp/HR_app/Screens/app_bar.dart';
import 'package:chatapp/HR_app/constants.dart';
import 'package:flutter/material.dart';

class Experience2 extends StatefulWidget {
  @override
  _Experience2State createState() => _Experience2State();
}

class _Experience2State extends State<Experience2> {
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
                CircleAvatar(
                  radius: 40,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(100),
                    child: Image(
                      image: AssetImage('assets/images/user1.png'),
                      width: 90,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Text(
                  'Name here',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                Text(
                  'Front-end & UI',
                  style: TextStyle(color: Colors.grey),
                ),
                SizedBox(
                  height: 20,
                ),
//---------------------Experience-------------------
                Material(
                  borderRadius: BorderRadius.circular(10),
                  elevation: 3,
                  child: TextFormField(
                    // controller: phone,

                    decoration: InputDecoration(
                      // suffix: Text('YRS'),
                      hintText: 'Experience',
                      hintStyle: TextStyle(color: Colors.grey),
                      filled: true,
                      suffixText: 'YRS',
                      fillColor: MediaQuery.of(context).platformBrightness ==
                              Brightness.light
                          ? kPrimaryColor.withOpacity(0.1)
                          : kContentColorLightTheme.withOpacity(0.1),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide:
                            BorderSide(color: Colors.transparent, width: 0),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(
                          color: Colors.transparent,
                        ),
                      ),
                    ),
                    keyboardType: TextInputType.number,
                    validator: (value) {
                      final regExp = RegExp('[0-9]');
                      if (value.isEmpty) {
                        return null;
                      } else if (!regExp.hasMatch(value)) {
                        return 'Enter only number';
                      } else {
                        return null;
                      }
                    },
                  ),
                ),
                SizedBox(height: 10),
//------------------Education----------
                Material(
                  borderRadius: BorderRadius.circular(10),
                  elevation: 3,
                  child: TextFormField(
                    // controller: name,
                    decoration: InputDecoration(
                      hintText: 'Education',
                      hintStyle: TextStyle(color: Colors.grey),
                      filled: true,
                      // fillColor: Colors.white,
                      fillColor: MediaQuery.of(context).platformBrightness ==
                              Brightness.light
                          ? kPrimaryColor.withOpacity(0.1)
                          : kContentColorLightTheme.withOpacity(0.1),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide:
                            BorderSide(color: Colors.transparent, width: 0),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(
                          color: Colors.transparent,
                        ),
                      ),
                    ),
                    autovalidateMode: AutovalidateMode.onUserInteraction,
                    validator: (value) {
                      final pattern = ('[a-zA-Z]+([\s][a-zA-Z]+)*');
                      final regExp = RegExp(pattern);
                      if (value.isEmpty) {
                        return null;
                      } else if (!regExp.hasMatch(value)) {
                        return 'Enter a Valid Name';
                      } else {
                        return null;
                      }
                    },
                  ),
                ),
                SizedBox(height: 10),
//--------------Skills dropdown----------------------
                Material(
                  borderRadius: BorderRadius.circular(10),
                  elevation: 3,
                  child: Container(
                    padding: EdgeInsets.all(8),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: MediaQuery.of(context).platformBrightness ==
                              Brightness.light
                          ? kPrimaryColor.withOpacity(0.1)
                          : kContentColorLightTheme.withOpacity(0.1),
                    ),
                    child: DropdownButtonHideUnderline(
                      child: DropdownButton<String>(
                        value: dropdownValue,
                        icon: const Icon(Icons.keyboard_arrow_down),
                        elevation: 0,
                        isExpanded: true,
                        // dropdownColor: MediaQuery.of(context).platformBrightness ==
                        //         Brightness.light
                        //     ? kPrimaryColor.withOpacity(0.7)
                        //     : kContentColorLightTheme.withOpacity(0.7),
                        hint: Text(
                          'Skills',
                          style: TextStyle(color: Colors.grey),
                        ),
                        onChanged: (String newValue) {
                          setState(() {
                            if (Chipmaker.choosed.length < 5)
                              Chipmaker.choosed.add(newValue);
                            // dropdownValue = newValue;
                          });
                        },
                        items: <String>['ali', 'ahmad', 'raza', 'gill']
                            .map<DropdownMenuItem<String>>((String value) {
                          return DropdownMenuItem<String>(
                            value: value,
                            child: Text(value),
                          );
                        }).toList(),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 20),

                Chipmaker.choosed.isNotEmpty
                    ? Chipmaker()
                    : SizedBox(height: 20),
//-------------------------interest dropdown------------
                Material(
                  borderRadius: BorderRadius.circular(10),
                  elevation: 3,
                  child: Container(
                    padding: EdgeInsets.all(8),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: MediaQuery.of(context).platformBrightness ==
                              Brightness.light
                          ? kPrimaryColor.withOpacity(0.1)
                          : kContentColorLightTheme.withOpacity(0.1),
                    ),
                    child: DropdownButtonHideUnderline(
                      child: DropdownButton<String>(
                        value: dropdownValue2,
                        style: TextStyle(color: Colors.black),
                        icon: const Icon(Icons.keyboard_arrow_down),
                        elevation: 0,
                        isExpanded: true,
                        // dropdownColor: MediaQuery.of(context).platformBrightness ==
                        //         Brightness.light
                        //     ? kPrimaryColor.withOpacity(0.5)
                        //     : kContentColorLightTheme.withOpacity(0.5),
                        hint: Text(
                          'Marital status',
                          style: TextStyle(color: Colors.grey),
                        ),
                        onChanged: (String newValue) {
                          setState(() {
                            dropdownValue2 = newValue;
                          });
                        },
                        items: <String>['Single', 'Married']
                            .map<DropdownMenuItem<String>>(
                          (String value) {
                            return DropdownMenuItem<String>(
                              value: value,
                              child: Text(value),
                            );
                          },
                        ).toList(),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 10),
//--------------------------About-----------------------
                Material(
                  borderRadius: BorderRadius.circular(10),
                  elevation: 3,
                  child: TextFormField(
                    maxLines: 5,
                    decoration: InputDecoration(
                      hintText: 'About',

                      hintStyle: TextStyle(color: Colors.grey),
                      filled: true,
                      // fillColor: Colors.white,
                      fillColor: MediaQuery.of(context).platformBrightness ==
                              Brightness.light
                          ? kPrimaryColor.withOpacity(0.1)
                          : kContentColorLightTheme.withOpacity(0.1),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide:
                            BorderSide(color: Colors.transparent, width: 0),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(
                          color: Colors.transparent,
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 20),
                FractionallySizedBox(
                  widthFactor: 1,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary: kPrimaryColor,
                      padding: EdgeInsets.symmetric(
                        vertical: 15,
                      ),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    onPressed: () {
                      Navigator.pushReplacement(
                          context, MaterialPageRoute(builder: (context) => Experience1()));
                    },
                    child: Text(
                      'Next',
                      style: TextStyle(color: Colors.white),
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
