import 'package:chatapp/HR_app/Screens/Performance1/TeamPerformance/components/team_performance_card.dart';
import 'package:chatapp/HR_app/Screens/Team/Components/model.dart';
import 'package:flutter/material.dart';

class Team extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Team'),
      ),
      body: ListView.builder(
        itemCount: myteam.length,
        itemBuilder: (_, index) {
          return TeamPerformanceCard(model: myteam[index]);
        },
      ),
    );
  }
}
