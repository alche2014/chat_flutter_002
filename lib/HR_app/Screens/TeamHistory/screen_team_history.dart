import 'package:chatapp/HR_app/Screens/TeamHistory/Components/model.dart';
import 'package:chatapp/HR_app/Screens/TeamHistory/Components/team_history_card.dart';
import 'package:chatapp/HR_app/Screens/app_bar.dart';
import 'package:flutter/material.dart';

class TeamHistory extends StatefulWidget {
  @override
  _TeamHistoryState createState() => _TeamHistoryState();
}

class _TeamHistoryState extends State<TeamHistory> {
  // List<String> myitems = ['toady', 'yesterday', 'this week', 'this month'];
  String dropdownValue = 'Today';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: app_bar('Team History'),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.max,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Align(
              alignment: Alignment.centerRight,
              child: DropdownButtonHideUnderline(
                child: DropdownButton<String>(
                  value: dropdownValue,
                  icon: const Icon(Icons.keyboard_arrow_down),
                  iconSize: 24,
                  elevation: 16,
                  // hint: Text('today'),
                  // style: const TextStyle(color: Colors.deepPurple),
                  onChanged: (String newValue) {
                    setState(() {
                      // print(dropdownValue);
                      dropdownValue = newValue;
                      // print(dropdownValue);
                    });
                  },
                  items: ['Today', 'yesterday', 'this week', 'this month']
                      .map<DropdownMenuItem<String>>((String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Text(value),
                    );
                  }).toList(),
                ),
              ),
            ),
            // Align(
            //   alignment: Alignment.centerRight,
            //   child: TextButton.icon(
            //     onPressed: () {},
            //     icon: Icon(Icons.keyboard_arrow_down, color: Colors.black,),
            //     label: Text('today', style: TextStyle(color: Colors.black),),
            //   ),
            // ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: myTeamHistory.length,
              itemBuilder: (context, index) {
                return Padding(padding: EdgeInsets.symmetric(horizontal: 15, vertical: 5),
                child: myTeamHistory[index],);
                
              },
            ),
          ),
        ],
      ),
    );
  }
}
