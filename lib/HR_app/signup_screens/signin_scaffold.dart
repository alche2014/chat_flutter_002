import 'package:chatapp/HR_app/signup_screens/components/doted_stepbar.dart';
import 'package:chatapp/HR_app/signup_screens/forms/Pg18_skill.dart';
import 'package:chatapp/HR_app/signup_screens/forms/Pg4_personalinfo.dart';
import 'package:chatapp/HR_app/signup_screens/forms/Pg5_experience.dart';
import 'package:chatapp/HR_app/signup_screens/forms/Pg6_education.dart';
import 'package:flutter/material.dart';

class Signin_scaffold extends StatefulWidget {
  static int count = 0;
  static ValueNotifier<int> counter = ValueNotifier(0);
  @override
  _Signin_scaffoldState createState() => _Signin_scaffoldState();
}

class _Signin_scaffoldState extends State<Signin_scaffold> {
  Map<int, Widget> _map = {
    0: Personalinfo_Pg4(),
    1: Experience_Pg5(),
    2: Education_Pg6(),
    3: Skills_Pg18(),
  };
  List<String> _title = [
    'Personal Information',
    'Experience',
    'Education',
    'Skills'
  ];

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
//-------------------------background image----------------------
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/images/background.png'),
              fit: BoxFit.fill)),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: ValueListenableBuilder(
          valueListenable: Signin_scaffold.counter,
          builder: (context, value, _) {
//-------------------------title bar-----------------------------
            return ListView(
              padding: EdgeInsets.symmetric(horizontal: 30, vertical: 30),
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(
                        icon: Icon(Icons.arrow_back),
                        onPressed: () {
                          Navigator.of(context).pop();
                        }),
                    Text(
                      _title[Signin_scaffold.counter.value],
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                          fontSize: 18),
                    ),
                    SizedBox(
                      width: 25,
                    )
                  ],
                ),
//--------------------------doted step bar-----------------------
                Doted_stepbar(Signin_scaffold.counter.value),
//--------------------------forms------------------
                _map[Signin_scaffold.counter.value],



//------------------------Buttons------------------------
                // TextButton(
                //   onPressed: () {
                //     // Navigator.of(context).push(
                //     //     MaterialPageRoute(builder: (context) => Navigationbar()));
                //   },
                //   child: Text(
                //     'Skip',
                //     style: TextStyle(color: Colors.red[800]),
                //   ),
                // ),
                // FractionallySizedBox(
                //   widthFactor: 0.85,
                //   child: ElevatedButton(
                //     style: ElevatedButton.styleFrom(
                //       primary: Colors.red[800],
                //       // minimumSize: Size(100, 40),
                //       padding: EdgeInsets.symmetric(
                //         vertical: 15,
                //       ),
                //       shape: RoundedRectangleBorder(
                //         borderRadius: BorderRadius.circular(10),
                //       ),
                //     ),
                //     onPressed: () {
                //       if (_counter <= 4) {
                //         setState(
                //           () {
                //             _counter += 1;
                //           },
                //         );
                //       } else {
                //         // Navigator.of(context).push(MaterialPageRoute(
                //         //     builder: (context) => Navigationbar()));
                //       }
                //     },
                //     child: Text(
                //       'Next',
                //       style: TextStyle(color: Colors.white),
                //     ),
                //   ),
                // ),
              ],
            );
          },
        ),
      ),
    );
  }
}
