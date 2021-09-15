import 'package:flutter/material.dart';

class TopTile extends StatelessWidget {
  TopTile({this.image, this.name, this.designation});
  var image;
  String name;
  String designation;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(5),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Flexible(
            flex: 1,
            child: CircleAvatar(
              radius: 50,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(70),
                child: Image(image: AssetImage(image), width: 100),
              ),
            ),
          ),
          // SizedBox(width: 10),
          Flexible(
            flex: 2,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  name,
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                ),
                Text(
                  designation,
                  style: TextStyle(fontSize: 14, color: Colors.grey),
                ),
              ],
            ),
          ),
          Flexible(flex: 1, child: Container()),
        ],
      ),
    );
  }
}
