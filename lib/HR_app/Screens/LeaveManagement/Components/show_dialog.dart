import 'package:chatapp/HR_app/constants.dart';
import 'package:flutter/material.dart';

Future LM_Dialog(BuildContext context) {
  return showDialog(
    context: context,
    builder: (context) => AlertDialog(
      backgroundColor:
          MediaQuery.of(context).platformBrightness == Brightness.light
              ? Colors.white
              : kContentColorLightTheme,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      title: Text('Apply Leave'),
      content: SingleChildScrollView(
        child: Container(
          // height: 320,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Dropdown('Date'),
              SizedBox(height: 10),
              Dropdown('Leave Type'),
              SizedBox(height: 10),
              Material(
                elevation: 3,
                borderRadius: BorderRadius.circular(10),
                color: MediaQuery.of(context).platformBrightness ==
                        Brightness.light
                    ? kContentColorDarkTheme
                    : kContentColorLightTheme.withOpacity(0.1),
                child: TextField(
                    maxLines: 2,
                    decoration: InputDecoration(
                        hintText: 'Comment',
                        hintStyle: TextStyle(color: Colors.grey),
                        // filled: true,
                        // fillColor: MediaQuery.of(context).platformBrightness ==
                        //         Brightness.light
                        //     ? kContentColorDarkTheme
                        //     : kContentColorLightTheme,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide:
                              BorderSide(color: Colors.transparent, width: 0),
                        ),
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide(
                              color: Colors.transparent,
                            )))),
              ),
              SizedBox(
                height: 10,
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.pop(context);
//--------------2nd dialog for apply button-----------------------
                  showDialog(
                    context: context,
                    builder: (context) => AlertDialog(
                      backgroundColor:
                          MediaQuery.of(context).platformBrightness ==
                                  Brightness.light
                              ? Colors.white
                              : kContentColorLightTheme,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20)),
                      title: Row(
                        children: [
                          SizedBox(
                            width: 210,
                          ),
                          IconButton(
                            icon: Icon(Icons.close),
                            onPressed: () {
                              Navigator.of(context).pop();
                            },
                          ),
                        ],
                      ),
                      content: SingleChildScrollView(
                        child: Container(
                          // height: 320,
                          // color: Colors.white,
                          child: Column(
                            children: [
                              Icon(
                                Icons.check_circle,
                                size: 60,
                                color: Colors.green,
                              ),
                              SizedBox(
                                height: 50,
                              ),
                              Text('You have Applied for your leave'),
                              Text('Waiting for approval'),
                            ],
                          ),
                        ),
                      ),
                    ),
                  );
                },
                style: ElevatedButton.styleFrom(
                  primary: kPrimaryColor,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                child: Text(
                  'Apply Now',
                  style: TextStyle(color: Colors.white),
                ),
              )
            ],
          ),
        ),
      ),
      // actions: [
      //   TextButton(
      //     onPressed: () {
      //       Navigator.of(context).pop();
      //     },
      //     child: Text('Okay'),
      //   )
      // ],
    ),
  );
}

class Dropdown extends StatefulWidget {
  Dropdown(this.hint);
  String hint;
  @override
  State<Dropdown> createState() => _DropdownState();
}

class _DropdownState extends State<Dropdown> {
  String dropdownValue;

  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 3,
      borderRadius: BorderRadius.circular(10),
      color: MediaQuery.of(context).platformBrightness == Brightness.light
          ? kContentColorDarkTheme
          : kContentColorLightTheme.withOpacity(0.1),
      child: Container(
        padding: EdgeInsets.all(8),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          // color: Colors.white,
        ),
        child: DropdownButtonHideUnderline(
          child: DropdownButton<String>(
            value: dropdownValue,
            icon: const Icon(Icons.keyboard_arrow_down),
            elevation: 3,
            isExpanded: true,
            dropdownColor:
                MediaQuery.of(context).platformBrightness == Brightness.light
                    ? kContentColorDarkTheme
                    : kContentColorLightTheme,
            hint: Text(widget.hint),
            onChanged: (String newValue) {
              setState(() {
                dropdownValue = newValue;
              });
            },
            items: <String>['1', '2']
                .map<DropdownMenuItem<String>>((String value) {
              return DropdownMenuItem<String>(
                value: value,
                child: Text(value),
              );
            }).toList(),
          ),
        ),
      ),
    );
  }
}
