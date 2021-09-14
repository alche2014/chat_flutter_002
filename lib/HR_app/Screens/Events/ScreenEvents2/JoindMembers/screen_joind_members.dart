import 'package:chatapp/HR_app/Screens/Events/ScreenEvents2/JoindMembers/Components/model.dart';
import 'package:flutter/material.dart';

class JoindMembers extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //------------------main display---------------------
      body: Stack(
        children: [
          //--------------1st black screen---------------
          Container(
            height: MediaQuery.of(context).size.height * 1,
            width: MediaQuery.of(context).size.width * 1,
            color: Colors.black,
          ),
          // ----------------2nd white disply containing cards-----------------------
          Positioned(
            top: 0,
            left: 0,
            right: 80,
            child: Container(
              padding: EdgeInsets.all(10),
              // width: 500,
              height: 600,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Theme.of(context).scaffoldBackgroundColor,
              ),

              child: Column(
                children: [
                  SizedBox(
                    height: 30,
                  ),
                  Align(
                      alignment: Alignment.topLeft,
                      child: Text(
                        'Joined Members',
                        style: TextStyle(color: Colors.red[800]),
                      )),
                  SizedBox(
                    height: 10,
                  ),
                  Expanded(
                    child: ListView.builder(
                      itemCount: myJoindMembers.length,
                      itemBuilder: (_, index) {
                        return myJoindMembers[index];
                      },
                    ),
                  ),
                ],
              ),
            ),
          ),
          //----------------------3rd close button ---------------------
          Positioned(
            top: 45,
            left: 270,
            // right: 200,
            child: IconButton(
                icon: Icon(
                  Icons.close,
                  size: 30,
                ),
                onPressed: () {
                  Navigator.of(context).pop();
                }),
          ),
        ],
      ),
    );
  }
}
