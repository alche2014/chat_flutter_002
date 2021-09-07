import 'package:chatapp/HR_app/Screens/navigaton_bar.dart';
import 'package:chatapp/HR_app/signup_screens/signin_scaffold.dart';
import 'package:flutter/material.dart';

class Personalinfo_Pg4 extends StatefulWidget {
  @override
  _Personalinfo_Pg4State createState() => _Personalinfo_Pg4State();
}

class _Personalinfo_Pg4State extends State<Personalinfo_Pg4> {
  var dropdownValue;
  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        children: [
          SizedBox(
            height: 10,
          ),
          // Row(
          //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
          //   children: [
          //     IconButton(
          //         icon: Icon(Icons.arrow_back),
          //         onPressed: () {
          //           Navigator.of(context).pop();
          //         }),
//---------------------------title----------------------
//           Text(
//             'Personal Information',
//             style: TextStyle(
//                 fontWeight: FontWeight.bold, color: Colors.black, fontSize: 18),
//           ),
// //--------------------------Doted stepbar---------------
//           SizedBox(
//             height: 15,
//           ),
//           Doted_stepbar(1),
//           SizedBox(
//             height: 15,
//           ),
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
            decoration: InputDecoration(
              hintText: 'Your Name',
              hintStyle: TextStyle(color: Colors.grey),
              filled: true,
              fillColor: Colors.white,
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: BorderSide(color: Colors.transparent, width: 0),
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
            decoration: InputDecoration(
              hintText: 'Father Name',
              hintStyle: TextStyle(color: Colors.grey),
              filled: true,
              fillColor: Colors.white,
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: BorderSide(color: Colors.transparent, width: 0),
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
            decoration: InputDecoration(
              hintText: 'Email',
              hintStyle: TextStyle(color: Colors.grey),
              filled: true,
              fillColor: Colors.white,
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: BorderSide(color: Colors.transparent, width: 0),
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
            decoration: InputDecoration(
              hintText: 'Phone',
              hintStyle: TextStyle(color: Colors.grey),
              filled: true,
              fillColor: Colors.white,
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: BorderSide(color: Colors.transparent, width: 0),
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
              color: Colors.white,
            ),
            child: DropdownButtonHideUnderline(
              child: DropdownButton<String>(
                value: dropdownValue,
                icon: const Icon(Icons.keyboard_arrow_down),
                elevation: 0,
                isExpanded: true,
                dropdownColor: Colors.white,
                hint: Text(
                  'Gender',
                  style: TextStyle(color: Colors.grey),
                ),
                onChanged: (String newValue) {
                  //   setState(() {
                  //     dropdownValue = newValue;
                  //   });
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
              color: Colors.white,
            ),
            child: DropdownButtonHideUnderline(
              child: DropdownButton<String>(
                value: dropdownValue,
                icon: const Icon(Icons.keyboard_arrow_down),
                elevation: 0,
                isExpanded: true,
                dropdownColor: Colors.white,
                hint: Text(
                  'Marital status',
                  style: TextStyle(color: Colors.grey),
                ),
                onChanged: (String newValue) {
                  //   setState(() {
                  //     dropdownValue = newValue;
                  //   });
                },
                items:
                    <String>['Single', 'Married'].map<DropdownMenuItem<String>>(
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
                borderRadius: BorderRadius.circular(10), color: Colors.white),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Date of Birth'),
                IconButton(
                  icon: Icon(Icons.today),
                  onPressed: () {
                    showDatePicker(
                        context: context,
                        initialDate: DateTime(2005),
                        firstDate: DateTime(2000),
                        lastDate: DateTime.now());
                  },
                )
              ],
            ),
          ),
//------------------------Buttons------------------------
          TextButton(
              onPressed: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) => Nav()));
              },
              child: Text(
                'Skip',
                style: TextStyle(color: Colors.red[800]),
              )),
          FractionallySizedBox(
            widthFactor: 1,
            child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: Colors.red[800],
                  padding: EdgeInsets.symmetric(
                    vertical: 15,
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                onPressed: () {
                  setState(() {
                    Signin_scaffold.counter.value += 1;
                  });
                },
                child: Text(
                  'Next',
                  style: TextStyle(color: Colors.white),
                )),
          )
        ],
      ),
    );
  }
}
