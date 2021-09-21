import 'package:chatapp/HR_app/constants.dart';
import 'package:flutter/material.dart';

class PInfo3Form extends StatelessWidget {
  String your_name;
  String father_name;
  String address;
  String email;
  String phone;
  String gender;
  String marital_status;
  String cnic;
  String date;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextField(
          enabled: false,
          decoration: InputDecoration(
            hintText: your_name != null ? your_name : 'User Name',
            hintStyle: TextStyle(color: Colors.grey),
            filled: true,
            fillColor:
                MediaQuery.of(context).platformBrightness == Brightness.light
                    ? kContentColorDarkTheme.withOpacity(0.1)
                    : kContentColorLightTheme.withOpacity(0.1),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: BorderSide(color: Colors.grey, width: 2),
            ),
          ),
        ),
        SizedBox(height: 10),
        TextField(
          enabled: false,
          decoration: InputDecoration(
            hintText: father_name != null ? father_name : 'Father Name',
            hintStyle: TextStyle(color: Colors.grey),
            filled: true,
            fillColor:
                MediaQuery.of(context).platformBrightness == Brightness.light
                    ? kContentColorDarkTheme.withOpacity(0.1)
                    : kContentColorLightTheme.withOpacity(0.1),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: BorderSide(color: Colors.grey, width: 2),
            ),
          ),
        ),
        SizedBox(height: 10),
        TextField(
          enabled: false,
          decoration: InputDecoration(
            hintText: address != null ? address : 'address',
            hintStyle: TextStyle(color: Colors.grey),
            filled: true,
            fillColor:
                MediaQuery.of(context).platformBrightness == Brightness.light
                    ? kContentColorDarkTheme.withOpacity(0.1)
                    : kContentColorLightTheme.withOpacity(0.1),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: BorderSide(color: Colors.grey, width: 2),
            ),
          ),
        ),
        SizedBox(height: 10),
        TextField(
          enabled: false,
          decoration: InputDecoration(
            hintText: email != null ? email : 'Email',
            hintStyle: TextStyle(color: Colors.grey),
            filled: true,
            fillColor:
                MediaQuery.of(context).platformBrightness == Brightness.light
                    ? kContentColorDarkTheme.withOpacity(0.1)
                    : kContentColorLightTheme.withOpacity(0.1),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: BorderSide(color: Colors.grey, width: 2),
            ),
          ),
        ),
        SizedBox(height: 10),
        TextField(
          enabled: false,
          decoration: InputDecoration(
            hintText: phone != null ? phone : 'Phone',
            hintStyle: TextStyle(color: Colors.grey),
            filled: true,
            fillColor:
                MediaQuery.of(context).platformBrightness == Brightness.light
                    ? kContentColorDarkTheme.withOpacity(0.1)
                    : kContentColorLightTheme.withOpacity(0.1),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: BorderSide(color: Colors.grey, width: 2),
            ),
          ),
        ),
        SizedBox(height: 10),
        TextField(
          enabled: false,
          decoration: InputDecoration(
            hintText: gender != null ? gender : 'Gender',
            hintStyle: TextStyle(color: Colors.grey),
            filled: true,
            fillColor:
                MediaQuery.of(context).platformBrightness == Brightness.light
                    ? kContentColorDarkTheme.withOpacity(0.1)
                    : kContentColorLightTheme.withOpacity(0.1),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: BorderSide(color: Colors.grey, width: 2),
            ),
          ),
        ),
        SizedBox(height: 10),
        TextField(
          enabled: false,
          decoration: InputDecoration(
            hintText: marital_status != null ? marital_status : 'Marital Status',
            hintStyle: TextStyle(color: Colors.grey),
            filled: true,
            fillColor:
                MediaQuery.of(context).platformBrightness == Brightness.light
                    ? kContentColorDarkTheme.withOpacity(0.1)
                    : kContentColorLightTheme.withOpacity(0.1),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: BorderSide(color: Colors.grey, width: 2),
            ),
          ),
        ),
        SizedBox(height: 10),
        TextField(
          enabled: false,
          decoration: InputDecoration(
            hintText: date != null ? date : 'Date',
            hintStyle: TextStyle(color: Colors.grey),
            filled: true,
            fillColor:
                MediaQuery.of(context).platformBrightness == Brightness.light
                    ? kContentColorDarkTheme.withOpacity(0.1)
                    : kContentColorLightTheme.withOpacity(0.1),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: BorderSide(color: Colors.grey, width: 2),
            ),
          ),
        ),
        SizedBox(height: 10),
        TextField(
          enabled: false,
          decoration: InputDecoration(
            hintText: cnic != null ? cnic : 'CNIC',
            hintStyle: TextStyle(color: Colors.grey),
            filled: true,
            fillColor:
                MediaQuery.of(context).platformBrightness == Brightness.light
                    ? kContentColorDarkTheme.withOpacity(0.1)
                    : kContentColorLightTheme.withOpacity(0.1),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: BorderSide(color: Colors.grey, width: 2),
            ),
          ),
        ),
      ],
    );
  }
}
