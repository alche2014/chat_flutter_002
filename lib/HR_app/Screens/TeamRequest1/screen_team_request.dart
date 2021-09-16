import 'package:chatapp/HR_app/Screens/TeamRequest1/Components/model.dart';
import 'package:chatapp/HR_app/Screens/app_bar.dart';
import 'package:flutter/material.dart';

class TeamRequest extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: app_bar('Team Request'),
      body: SingleChildScrollView(
        physics: ScrollPhysics(),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              InkWell(
                onTap: () {},
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text('Filter',
                        style: TextStyle(fontWeight: FontWeight.bold)),
                    SizedBox(width: 2),
                    Icon(Icons.tune),
                  ],
                ),
              ),
              Flexible(
                child: ListView.builder(
                  physics: NeverScrollableScrollPhysics(),
                  itemCount: myTeamReq.length,
                  shrinkWrap: true,
                  itemBuilder: (_, index) {
                    return Padding(
                      padding: EdgeInsets.symmetric(horizontal: 20),
                      child: myTeamReq[index],
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
