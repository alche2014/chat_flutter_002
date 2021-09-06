import 'package:chatapp/components/filled_outlined_button.dart';
import 'package:chatapp/constants.dart';
import 'package:chatapp/models/Chat.dart';
import 'package:chatapp/screens/messages/message_screen.dart';
import 'package:flutter/material.dart';

import 'chatcard.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: EdgeInsets.fromLTRB(
              kDefaultPadding, 0, kDefaultPadding, kDefaultPadding),
          color: kPrimaryColor,
          child: Row(
            children: [
              FillOutlineButton(press: () {}, text: 'Recent Messages'),
              SizedBox(width: kDefaultPadding),
              FillOutlineButton(
                press: () {},
                text: 'Active',
                isFilled: false,
              ),
            ],
          ),
        ),
        Expanded(
          child: ListView.builder(
            itemCount: chatsData.length,
            itemBuilder: (context, index) => ChatCard(
              chat: chatsData[index],
              press: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => MessagesScreen()));
              },
            ),
          ),
        ),
      ],
    );
  }
}
