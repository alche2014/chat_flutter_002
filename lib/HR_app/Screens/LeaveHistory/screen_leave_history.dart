import 'package:flutter/material.dart';
import 'package:chatapp/HR_app/Screens/LeaveHistory/Components/models.dart';
import 'package:chatapp/HR_app/Screens/app_bar.dart';

class LeaveHistory extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: app_bar('Leave History'),
      body: SingleChildScrollView(
        physics: ScrollPhysics(),
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              FilterButton(),
              Flexible(
                child: ListView.builder(
                  physics: NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemCount: myleave.length,
                  itemBuilder: (_, index) {
                    return myleave[index];
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

// ----------------filter button----------------

  Row FilterButton() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        InkWell(
          onTap: () {},
          child: Container(
            child: Row(
              children: [
                Text('Filter',
                    style: TextStyle(
                        color: Colors.grey, fontWeight: FontWeight.bold)),
                SizedBox(width: 2),
                Icon(Icons.tune),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
