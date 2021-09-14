import 'package:chatapp/HR_app/constants.dart';
import 'package:flutter/material.dart';

//-----------------Header tile-------------
class HeaderTile extends StatelessWidget {
  HeaderTile(
      {this.image, this.text, this.buttontext, this.press, this.mycolor});
  String image;
  String text;
  String buttontext;
  Color mycolor;
  final VoidCallback press;
  @override
  Widget build(BuildContext context) {
    return ListTile(
//......colored container.......
      leading: Container(
        padding: EdgeInsets.symmetric(horizontal: 5, vertical: 5),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: mycolor,
        ),
        child: Image(
          image: AssetImage(image),
          height: 60,
        ),
      ),
      title: Text(text),
      trailing: buttontext.isEmpty
          ? null
          : TextButton(
              onPressed: press,
              child: Text(
                buttontext,
                style: TextStyle(
                  color: Colors.red[800],
                  decoration: TextDecoration.underline,
                ),
              ),
            ),
    );
  }
}

//--------------------Pending Request card-----------------------

class PR_Card extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 5, vertical: 10),
      child: Material(
        elevation: 3,
        color: MediaQuery.of(context).platformBrightness ==
                            Brightness.light
                        ? Colors.white
                        : kContentColorLightTheme.withOpacity(0.1),
        borderRadius: BorderRadius.circular(10),
        child: InkWell(
          borderRadius: BorderRadius.circular(10),
          onTap: () {},
          child: Container(
            // margin: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
            padding: EdgeInsets.symmetric(vertical: 10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              // color: Colors.white,
            ),
            child: ListTile(
              // shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(100))),
              // tileColor: Colors.blue,
              leading: CircleAvatar(
                backgroundColor: Theme.of(context).scaffoldBackgroundColor,
                child: Icon(
                  Icons.person_outline,
                  color: Colors.red,
                  size: 25,
                ),
              ),
              title: Text('Pending Requests'),
              subtitle: Text('02'),
              trailing: CircleAvatar(
                radius: 12,
                backgroundColor: Theme.of(context).scaffoldBackgroundColor,
                child: Icon(
                  Icons.keyboard_arrow_right,
                  color: Colors.black,
                  size: 20,
                ),
              ),
            ),
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
