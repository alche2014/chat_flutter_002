import 'package:chatapp/HR_app/Screens/Personal_Information1/screen_personal_info1.dart';
import 'package:chatapp/HR_app/Screens/navigaton_bar.dart';
import 'package:chatapp/HR_app/constants.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class PersonalInformation2 extends StatefulWidget {
  @override
  _Personalinfo_Pg4State createState() => _Personalinfo_Pg4State();
}

class _Personalinfo_Pg4State extends State<PersonalInformation2> {
  var genderdropdown;
  var statusdropdown;
  TextEditingController name = new TextEditingController();
  TextEditingController fname = new TextEditingController();
  TextEditingController address = new TextEditingController();
  TextEditingController email = new TextEditingController();
  TextEditingController phone = new TextEditingController();
  // TextEditingController gender = new TextEditingController();
  // TextEditingController fstatus = new TextEditingController();
  TextEditingController cnic = new TextEditingController();
  DateTime date;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Personal Information'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Form(
            child: Column(
              children: [
                SizedBox(
                  height: 10,
                ),
//-------------------------Profile pic------------------
                Stack(
                  children: [
                    ClipRRect(
                      child: Image(
                        image: AssetImage('assets/images/user_2.png'),
                        width: 90,
                      ),
                    ),
                    Positioned(
                      bottom: 0,
                      right: 0,
                      child: Image(
                        image: AssetImage('assets/images/Vector.png'),
                        width: 30,
                        fit: BoxFit.cover,
                      ),
                    ),
                    Positioned(
                      bottom: 3,
                      right: 3,
                      child: Icon(
                        Icons.edit_outlined,
                        size: 22,
                        color: Colors.white,
                      ),
                    ),
                  ],
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
//  -------------------------textfields-------------------------
                TextFormField(
                  controller: name,
                  decoration: InputDecoration(
                    hintText: 'Your Name',
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
                SizedBox(
                  height: 10,
                ),
                TextFormField(
                  controller: fname,
                  decoration: InputDecoration(
                    hintText: 'Father Name',
                    hintStyle: TextStyle(color: Colors.grey),
                    filled: true,
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
                SizedBox(
                  height: 10,
                ),
                TextFormField(
                  controller: email,
                  decoration: InputDecoration(
                    hintText: 'Email',
                    hintStyle: TextStyle(color: Colors.grey),
                    filled: true,
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
                    final pattern =
                        (r'^.+@[a-zA-Z]+\.{1}[a-zA-Z]+(\.{0,1}[a-zA-Z]+)$');
                    final regExp = RegExp(pattern);

                    if (value.isEmpty) {
                      return null;
                    } else if (value.contains(' ')) {
                      return 'can not have blank spaces';
                    } else if (!regExp.hasMatch(value)) {
                      return 'Enter a valid email';
                    } else {
                      return null;
                    }
                  },
                ),
                SizedBox(
                  height: 10,
                ),
                TextFormField(
                  controller: phone,
                  decoration: InputDecoration(
                    hintText: 'Phone',
                    hintStyle: TextStyle(color: Colors.grey),
                    filled: true,
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
//----------------------drop downs-----------------------
                SizedBox(
                  height: 10,
                ),
                Container(
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
                      value: genderdropdown,
                      icon: const Icon(Icons.keyboard_arrow_down),
                      elevation: 0,
                      isExpanded: true,
                      // dropdownColor:MediaQuery.of(context).platformBrightness ==
                      //         Brightness.light
                      //     ? kPrimaryColor.withOpacity(0.5)
                      //     : kContentColorLightTheme.withOpacity(0.5),
                      hint: Text(
                        'Gender',
                        style: TextStyle(color: Colors.grey),
                      ),
                      onChanged: (String newValue) {
                        setState(() {
                          genderdropdown = newValue;
                        });
                      },
                      items: <String>['Male', 'Female', 'Other']
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
                SizedBox(
                  height: 10,
                ),
                Container(
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
                      value: statusdropdown,
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
                          statusdropdown = newValue;
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
//----------------------Date picker----------------------------
                Container(
                  height: 60,
                  margin: EdgeInsets.symmetric(vertical: 10),
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: MediaQuery.of(context).platformBrightness ==
                            Brightness.light
                        ? kPrimaryColor.withOpacity(0.1)
                        : kContentColorLightTheme.withOpacity(0.1),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(date.toString()),
                      IconButton(
                        icon: Icon(Icons.today),
                        onPressed: () {
                          showDatePicker(
                            context: context,
                            initialDate: DateTime(2005),
                            firstDate: DateTime(2000),
                            lastDate: DateTime.now(),
                          ).then((value) {
                            setState(() {
                              date = value;
                            });
                          });
                        },
                      )
                    ],
                  ),
                ),
//-----------------CNIC-----------------
                TextFormField(
                  controller: cnic,
                  decoration: InputDecoration(
                    hintText: 'CNIC',
                    hintStyle: TextStyle(color: Colors.grey),
                    filled: true,
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
//------------------------Buttons------------------------
                TextButton(
                    onPressed: () {
                      Navigator.of(context)
                          .push(MaterialPageRoute(builder: (context) => Nav()));
                    },
                    child: Text(
                      'Skip',
                      style: TextStyle(color: kSecondaryColor),
                    )),
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
                        setState(() {
                          setdata('name', name.text);
                          print(getdata('name').toString());
                          print(
                              'yoyoyoyoyoyoyoyoyoyoyoyoyoyoyoyoyoyoyoyyyyoyoyyoy');
                          setdata('fname', fname.text);
                          setdata('address', address.text);
                          setdata('email', email.text);
                          setdata('phone', phone.text);
                          setdata('genderdropdown', genderdropdown);
                          setdata('statusdropdown', statusdropdown);
                          setdata('date', date.toString());
                          setdata('cnic', cnic.text);
                        });
                        Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                                builder: (context) => PersonalInformation1()));
                      },
                      child: Text(
                        'Next',
                        // style: TextStyle(color: Colors.white),
                      )),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
