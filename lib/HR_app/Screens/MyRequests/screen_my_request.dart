import 'package:chatapp/HR_app/Screens/MyRequests/Components/models.dart';
import 'package:chatapp/HR_app/Screens/app_bar.dart';
import 'package:flutter/material.dart';

class MyRequest extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: app_bar(titilee: 'My Request'),
      body: SingleChildScrollView(
        physics: ScrollPhysics(),
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              RedCreateButton(),
              Flexible(
                child: ListView.builder(
                  physics: NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemCount: myReq.length,
                  itemBuilder: (_, index) {
                    return myReq[index];
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
//-------------------red create Request------------------------

class RedCreateButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          OutlinedButton(
            child: Text("+Create Request"),
            style: OutlinedButton.styleFrom(
                primary: Colors.red[800],
                backgroundColor: Colors.transparent,
                onSurface: Colors.orangeAccent,
                side: BorderSide(color: Colors.red[800], width: 1)),
            onPressed: () {},
          ),
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
            )),
          ),
        ],
      ),
    );
  }
}
