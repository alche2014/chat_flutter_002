import 'package:chatapp/constants.dart';
import 'package:chatapp/models/ChatMessage.dart';
import 'package:chatapp/screens/messages/components/body.dart';
import 'package:flutter/material.dart';


class TextMessage extends StatelessWidget {
  const TextMessage({
    Key key,
    this.message
  }) : super(key: key);
  final Message message;
  

  @override
  Widget build(BuildContext context) {
    return Container(
      // margin: EdgeInsets.only(top: kDefaultPadding),
      padding: EdgeInsets.symmetric(
        horizontal: kDefaultPadding * 0.75,
        vertical: kDefaultPadding / 2,
      ),
      decoration: BoxDecoration(
        color: kPrimaryColor.withOpacity(message.issender ? 1 : 0.08),
        borderRadius: BorderRadius.circular(30),
      ),
      child: Text(
        message.text,
        style: TextStyle(color:
        message.issender
        ? Colors.white
        : Theme.of(context).textTheme.bodyText1.color,
        ),
      ),
    );
  }
}

