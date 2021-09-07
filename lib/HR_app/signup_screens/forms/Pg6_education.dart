import 'package:chatapp/HR_app/Screens/navigaton_bar.dart';
import 'package:chatapp/HR_app/signup_screens/signin_scaffold.dart';
import 'package:flutter/material.dart';

class Education_Pg6 extends StatefulWidget {
  @override
  _Education_Pg6State createState() => _Education_Pg6State();
}

class _Education_Pg6State extends State<Education_Pg6> {
  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        children: [
          // Row(
          //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
          //   children: [
          //     IconButton(
          //       icon: Icon(Icons.arrow_back),
          //       onPressed: () {
          //         Navigator.of(context).push(MaterialPageRoute(
          //             builder: (context) => Signin_scaffold()));
          //       },
          //     ),
          //     Text(
          //       'Education',
          //       style: TextStyle(
          //           fontWeight: FontWeight.bold,
          //           color: Colors.black,
          //           fontSize: 18),
          //     ),
          //     SizedBox(
          //       width: 25,
          //     ),
          //   ],
          // ),
          // SizedBox(height: 15,),
          // Doted_stepbar(3),
          // SizedBox(height: 15,),
          TextFormField(
            decoration: InputDecoration(
              hintText: 'School',
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
              hintText: 'Degree',
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
              hintText: 'Field of study',
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
//------------------Date Picker---------------------------
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
          SizedBox(
            height: 10,
          ),
          TextFormField(
            decoration: InputDecoration(
              hintText: 'Degree',
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
            ),
          ),
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
                //       setState(() {
                //          Signin_scaffold.counter.value += 1;
                //       });
                //     } else {
                //       // Navigator.of(context).push(MaterialPageRoute(
                //       //     builder: (context) => Experience_Pg5()));
                //     }
              },
              child: Text(
                'Next',
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
