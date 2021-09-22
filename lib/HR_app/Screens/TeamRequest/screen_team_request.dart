import 'package:chatapp/HR_app/Screens/TeamRequest/Components/model.dart';
import 'package:chatapp/HR_app/Screens/TeamRequest/Components/team_request1_card.dart';
import 'package:chatapp/HR_app/Screens/app_bar.dart';
import 'package:flutter/material.dart';

class TeamRequest extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: app_bar(titilee: 'Team Request'),
      body: SingleChildScrollView(
        physics: ScrollPhysics(),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Align(
                alignment: Alignment.centerRight,
                child: InkWell(
                  onTap: () {},
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text('Filter',
                          style: TextStyle(fontWeight: FontWeight.bold)),
                      SizedBox(width: 2),
                      Icon(Icons.tune),
                    ],
                  ),
                ),
              ),
              Flexible(
                child: ListView.builder(
                  physics: NeverScrollableScrollPhysics(),
                  itemCount: myTeamReq.length,
                  shrinkWrap: true,
                  itemBuilder: (_, index) {
                    return TeamRequestCard(model:  myTeamReq[index]);
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
