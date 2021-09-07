import 'package:chatapp/HR_app/Screens/navigaton_bar.dart';
import 'package:chatapp/HR_app/signup_screens/signin_scaffold.dart';
import 'package:flutter/material.dart';

class Experience_Pg5 extends StatefulWidget {
  @override
  _Experience_Pg5State createState() => _Experience_Pg5State();
}

class _Experience_Pg5State extends State<Experience_Pg5> {
  var _iscchecked = false;
  var dropdownValue;

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        children: [
          // Row(
          //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
          //   children: [
          //     IconButton(
          //         icon: Icon(Icons.arrow_back),
          //         onPressed: () {
          //           Navigator.of(context).push(MaterialPageRoute(
          //               builder: (context) => Signin_scaffold()));
          //         }),
          //     Text(
          //       'Experience',
          //       style: TextStyle(
          //           fontWeight: FontWeight.bold,
          //           color: Colors.black,
          //           fontSize: 18),
          //     ),
          //     SizedBox(
          //       width: 25,
          //     )
          //   ],
          // ),
          // SizedBox(height: 15,),
          // Doted_stepbar(2),
          // SizedBox(height: 15,),
          TextFormField(
            decoration: InputDecoration(
              hintText: 'Title',
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
                  'Employment Type',
                  style: TextStyle(color: Colors.grey),
                ),
                onChanged: (String newValue) {
                  //   setState(() {
                  //     dropdownValue = newValue;
                  //   });
                },
                items: <String>[
                  'Permanent',
                  'internship',
                ].map<DropdownMenuItem<String>>(
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
          TextFormField(
            decoration: InputDecoration(
              hintText: 'Company Name',
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
          ),
          SizedBox(
            height: 10,
          ),
          TextFormField(
            decoration: InputDecoration(
              hintText: 'Location',
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
          ),
//----------------------Date Picker---------------
          Row(
            children: [
              Expanded(
                child: Container(
                  height: 60,
                  margin: EdgeInsets.symmetric(vertical: 10),
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.white),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Start Date'),
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
              ),
              SizedBox(
                width: 10,
              ),
              Expanded(
                child: Container(
                  height: 60,
                  margin: EdgeInsets.symmetric(vertical: 10),
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.white),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('End Date'),
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
              ),
            ],
          ),
          Theme(
            data: ThemeData(unselectedWidgetColor: Colors.red[800]),
            child: CheckboxListTile(
              contentPadding: EdgeInsets.only(left: 0),
              // contentPadding: null,
              title: Text(
                'I currently work in this role',
                style: TextStyle(color: Colors.grey),
              ),
              value: _iscchecked,
              activeColor: Colors.green,
              onChanged: (bool value) {
                setState(
                  () {
                    _iscchecked = value;
                  },
                );
              },
              controlAffinity: ListTileControlAffinity.leading,
            ),
          ),
          SizedBox(
            height: 10,
          ),
          TextFormField(
            maxLines: 5,
            decoration: InputDecoration(
              hintText: 'Discription',
              filled: true,
              fillColor: Colors.white,
              border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide(color: Colors.transparent)),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: BorderSide(
                  color: Colors.transparent,
                ),
              ),
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
                  Signin_scaffold.counter.value += 1;
                  // if ( Signin_scaffold.counter.value < 4) {
                  //   setState(() {
                  //      Signin_scaffold.counter.value += 1;
                  //   });
                  // } else {
                  //   // Navigator.of(context).push(MaterialPageRoute(
                  //   //     builder: (context) => Experience_Pg5()));
                  // }
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
