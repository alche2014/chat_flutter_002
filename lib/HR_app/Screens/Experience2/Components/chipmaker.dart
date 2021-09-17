import 'package:flutter/material.dart';

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
