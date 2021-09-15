import 'package:chatapp/HR_app/constants.dart';
import 'package:flutter/material.dart';

//   // getdata('name').then((value) =>  {
//   //       your_name = value});
//   // getdata('name').then((String value) => {print(value)});
//   your_name = await getdata('name');
//   // print(your_name);
//   father_name = await getdata('fname');
//   address = await getdata('address');
//   email = await getdata('email');
//   phone = await getdata('phone');
//   gender = await getdata('genderdropdown');
//   marital_status = await getdata('statusdropdown');
//   cnic = await getdata('cnic');
//   date = await getdata('date');
class DisplayForm extends StatefulWidget {
  @override
  _DisplayFormState createState() => _DisplayFormState();
}

class _DisplayFormState extends State<DisplayForm> {
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
  void initState() {
    super.initState();
    // print('zzzzzzzzzzzzzzzzzzzz');
    getdata('name').then((String value) => {
          setState(() {
            your_name = value;
          }),
        });
    getdata('fname').then((String value) => {
          setState(() {
            father_name = value;
          }),
        });
    getdata('address').then((String value) => {
          setState(() {
            address = value;
          }),
        });
    getdata('email').then((String value) => {
          setState(() {
            email = value;
          }),
        });
    getdata('phone').then((String value) => {
          setState(() {
            phone = value;
          }),
        });
    getdata('genderdropdown').then((String value) => {
          setState(() {
            gender = value;
          }),
        });
    getdata('statusdropdown').then((String value) => {
          setState(() {
            marital_status = value;
          }),
        });
    getdata('cnic').then((String value) => {
          setState(() {
            cnic = value;
          }),
        });
    getdata('date').then((String value) => {
          setState(() {
            date = value;
          }),
        });
  }

  Widget build(BuildContext context) {
    return Column(
      children: [
        TextField(
          enabled: false,
          decoration: InputDecoration(
            hintText: your_name != "" ? your_name : 'Your Name',
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
            hintText: father_name != "" ? father_name : 'Father Name',
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
            hintText: address != "" ? address : 'address',
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
            hintText: email != "" ? email : 'Email',
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
            hintText: phone != "" ? phone : 'Phone',
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
            hintText: gender != "" ? gender : 'Gender',
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
            hintText:
                marital_status != "" ? marital_status : 'Marital Status',
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
            hintText: cnic != "" ? cnic : 'CNIC',
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
