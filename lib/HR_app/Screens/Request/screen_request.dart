import 'package:chatapp/HR_app/Screens/Request/Components/cards.dart';
import 'package:chatapp/HR_app/Screens/Request/Components/models.dart';
import 'package:chatapp/HR_app/Screens/Request/Components/requests_card.dart';
import 'package:flutter/material.dart';

class Request extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Request',
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
        actions: [
          IconButton(
              icon: Icon(
                Icons.notifications,
              ),
              onPressed: () {})
        ],
      ),
      body: SingleChildScrollView(
        physics: ScrollPhysics(),
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              HeaderTile(
                image: 'assets/images/chain_icon.png',
                text: 'Team Request',
                buttontext: '',
                mycolor: Colors.red,
              ),
              PR_Card(),
              HeaderTile(
                image: 'assets/images/chain_icon.png',
                text: 'My Request',
                buttontext: 'View All',
                mycolor: Colors.orangeAccent[700],
                press: () {},
              ),
              RedCreateButton(),
              Flexible(
                child: ListView.builder(
                  physics: NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemCount: myreq.length,
                  itemBuilder: (_, index) {
                    return myreq[index];
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
