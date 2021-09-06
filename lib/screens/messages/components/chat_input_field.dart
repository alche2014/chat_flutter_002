import 'package:chatapp/constants.dart';
import 'package:chatapp/models/ChatMessage.dart';
import 'package:chatapp/screens/messages/message_screen.dart';
import 'package:flutter/material.dart';

class ChatInputField extends StatefulWidget {
  ChatInputField({
    Key key,
  }) : super(key: key);
  @override
  _ChatInputFieldState createState() => _ChatInputFieldState();
}

class _ChatInputFieldState extends State<ChatInputField> {
  TextEditingController _controller = new TextEditingController();

  addmsg(String text) {
    myMsg.add(new Message(
      name: 'ali',
      issender: true,
      group: '30-sep',
      text: text,
    ));
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
          horizontal: kDefaultPadding, vertical: kDefaultPadding / 2),
      decoration: BoxDecoration(
        color: Theme.of(context).scaffoldBackgroundColor,
        boxShadow: [
          BoxShadow(
            offset: Offset(0, 4),
            blurRadius: 32,
            color: kPrimaryColor.withOpacity(0.18),
          )
        ],
      ),
      child: SafeArea(
          child: Row(
        children: [
          Icon(Icons.mic, color: kPrimaryColor),
          SizedBox(width: kDefaultPadding),
          Expanded(
              child: Container(
            padding: EdgeInsets.symmetric(horizontal: kDefaultPadding * 0.75),
            decoration: BoxDecoration(
              color: kPrimaryColor.withOpacity(0.05),
              borderRadius: BorderRadius.circular(40),
            ),
            child: Row(
              children: [
                Icon(
                  Icons.sentiment_satisfied_alt_outlined,
                  color: Theme.of(context)
                      .textTheme
                      .bodyText1
                      .color
                      .withOpacity(0.64),
                ),
                SizedBox(width: kDefaultPadding / 4),
                Expanded(
                  child: TextField(
                    controller: _controller,
                    decoration: InputDecoration(
                      hintText: 'Type Message',
                      border: InputBorder.none,
                    ),
                  ),
                ),
                Icon(
                  Icons.attach_file,
                  color: Theme.of(context)
                      .textTheme
                      .bodyText1
                      .color
                      .withOpacity(0.64),
                ),
                SizedBox(width: kDefaultPadding / 4),
                IconButton(
                  splashColor: kPrimaryColor,
                  // Icons.camera_alt_outlined,
                  icon: Icon(Icons.send),
                  color: Theme.of(context)
                      .textTheme
                      .bodyText1
                      .color
                      .withOpacity(0.64),
                  onPressed: () {
                    print(_controller.text);
                    print(MessagesScreen.length.value +=1);
                    count++;
                    setState(() {
                      addmsg(_controller.text);
                      _controller.text = '';
                    });
                    print(_controller.text);
                    print(count);
                  },
                ),
              ],
            ),
          )),
        ],
      )),
    );
  }
}
