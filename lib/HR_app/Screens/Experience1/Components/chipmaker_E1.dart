import 'package:flutter/material.dart';

class Chipmaker_E1 extends StatefulWidget {
  static List<String> chooseditem = ['ali', 'ahmad'];
  @override
  _Chipmaker_E1State createState() => _Chipmaker_E1State();
}

class _Chipmaker_E1State extends State<Chipmaker_E1> {
  @override
  void initState() {
    super.initState();
  }

  Widget build(BuildContext context) {
    return Wrap(
      spacing: 6.0,
      runSpacing: 6.0,
      children: List<Widget>.generate(Chipmaker_E1.chooseditem.length, (int index) {
        return Chip(
          label: Text(Chipmaker_E1.chooseditem[index]),
          // onDeleted: () {
          //   // setState(() {
          //     // Chipmaker_E1.chooseditem.removeAt(index);
          //   // });
          // },
        );
      }),
    );
  }
}
