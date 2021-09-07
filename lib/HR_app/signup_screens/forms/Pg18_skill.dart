import 'package:chatapp/HR_app/Screens/navigaton_bar.dart';
import 'package:flutter/material.dart';

class Skills_Pg18 extends StatefulWidget {
  @override
  _Skills_Pg18State createState() => _Skills_Pg18State();
}

class _Skills_Pg18State extends State<Skills_Pg18> {
  var dropdownValue;

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
//------------------title & back button-----------------------
//           Row(
//             mainAxisAlignment: MainAxisAlignment.spaceBetween,
//             children: [
//               IconButton(
//                   icon: Icon(Icons.arrow_back),
//                   onPressed: () {
//                     Navigator.of(context).push(MaterialPageRoute(
//                         builder: (context) => Signin_scaffold()));
//                   }),
//               Text(
//                 'Skills',
//                 style: TextStyle(
//                     fontWeight: FontWeight.bold,
//                     color: Colors.black,
//                     fontSize: 18),
//               ),
//               SizedBox(
//                 width: 25,
//               )
//             ],
//           ),
// //---------------------doted step bar----------------------
//           SizedBox(
//             height: 15,
//           ),
//           Center(child: Doted_stepbar(4)),
//           SizedBox(
//             height: 15,
//           ),
//--------------------drop down-----------------------------
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
                  'Skills',
                  style: TextStyle(color: Colors.grey),
                ),
                onChanged: (String newValue) {
                  setState(() {
                    if (Chipmaker.choosed.length < 3)
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
          Container(
            height: MediaQuery.of(context).size.height * 0.2,
            child: Chipmaker.choosed.isNotEmpty ? Chipmaker() : null,
          ),

          Text(
            'Suggested Skills',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          Container(
            height: MediaQuery.of(context).size.height * 0.3,
            child: Chipmaker.choosed.isNotEmpty ? Chipmaker() : null,
          ),
          //------------------------Buttons------------------------
          Center(
            child: TextButton(
                onPressed: () {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (context) => Nav()));
                },
                child: Text(
                  'Skip',
                  style: TextStyle(color: Colors.red[800]),
                )),
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
                  //   if ( Signin_scaffold.counter.value < 4) {
                  //     setState(() {
                  //        Signin_scaffold.counter.value += 1;
                  //     });
                  //   } else {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (context) => Nav()));
                  //   }
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

//----------------Chip Maker-------------------------
class Chipmaker extends StatefulWidget {
  static List<String> choosed = [];
  @override
  _ChipmakerState createState() => _ChipmakerState();
}

class _ChipmakerState extends State<Chipmaker> {
  @override
  void initState() {
    super.initState();
  }

  Widget build(BuildContext context) {
    return Wrap(
      spacing: 6.0,
      runSpacing: 6.0,
      children: List<Widget>.generate(Chipmaker.choosed.length, (int index) {
        return Chip(
          label: Text(Chipmaker.choosed[index]),
          onDeleted: () {
            setState(() {
              Chipmaker.choosed.removeAt(index);
            });
          },
        );
      }),
    );
  }
}
