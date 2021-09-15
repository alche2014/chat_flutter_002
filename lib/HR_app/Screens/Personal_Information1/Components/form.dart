import 'package:chatapp/HR_app/constants.dart';
import 'package:flutter/material.dart';

class DisplayForm extends StatefulWidget {
  @override
  _DisplayFormState createState() => _DisplayFormState();
}

class _DisplayFormState extends State<DisplayForm> {
  @override
  String your_name;
  String father_name;
  String address;
  String email;
  String phone;
  String gender;
  String marital_status;
  String cnic;
  String date;
  void initstate() {
    super.initState();
    setState(() async{

      your_name = await getdata('name');
      print(your_name);
      father_name = await getdata('fname');
      address = await getdata('address');
      email = await getdata('email');
      phone = await getdata('phone');
      gender = await getdata('genderdropdown');
      marital_status = await getdata('statusdropdown');
      cnic = await getdata('cnic');
      date = await getdata('date');
    });
  }

  Widget build(BuildContext context) {
    return Column(
      children: [
        TextField(
          enabled: false,
          decoration: InputDecoration(
            hintText: your_name ?? "Your Name",
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
            hintText: father_name ?? 'Father Name',
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
            hintText: address ?? 'address',
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
            hintText: email ?? 'Email',
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
            hintText: phone ?? 'Phone',
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
            hintText: gender ?? 'Gender',
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
            hintText: marital_status ?? 'Marital Status',
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
            hintText: cnic ?? 'CNIC',
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
            hintText: date ?? 'Date',
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
