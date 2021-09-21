import 'package:chatapp/HR_app/Screens/Performance1/TeamPerformance/components/model.dart';
import 'package:chatapp/HR_app/Screens/Performance1/TeamPerformance/components/team_performance_card.dart';
import 'package:flutter/material.dart';

class TeamPerformance extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: myPerformance1.length,
      itemBuilder: (_, index) {
        return TeamPerformanceCard(model: myPerformance1[index]);
      },
    );
  }
}
