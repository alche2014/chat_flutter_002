import 'package:chatapp/HR_app/Screens/navigaton_bar.dart';
import 'package:chatapp/HR_app/constants.dart';
import 'package:chatapp/HR_app/signup_screens/signin_scaffold.dart';
import 'package:flutter/material.dart';

class Signin_Pg1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              fit: BoxFit.cover,
              image: AssetImage('assets/images/background.png'))),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Form(
          autovalidateMode: AutovalidateMode.onUserInteraction,
          child: ListView(
            padding: EdgeInsets.all(30),
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.1,
              ),
              CircleAvatar(
                radius: 60,
                backgroundColor: Colors.transparent,
                child: Image(image: AssetImage('assets/images/alchemative_icon.png')),
              ),
              SizedBox(
                height: 60,
              ),
              TextFormField(
                decoration: InputDecoration(
                  hintText: 'Email',
                  hintStyle: TextStyle(color: Colors.grey),
                  filled: true,
                  fillColor: MediaQuery.of(context).platformBrightness ==
                          Brightness.light
                      ? kPrimaryColor.withOpacity(0.1)
                      : kContentColorLightTheme.withOpacity(0.1),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(color: Colors.transparent, width: 0),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(
                      color: Colors.transparent,
                    ),
                  ),
                ),
                autovalidateMode: AutovalidateMode.onUserInteraction,
                validator: (value) {
                  final pattern =
                      (r'^.+@[a-zA-Z]+\.{1}[a-zA-Z]+(\.{0,1}[a-zA-Z]+)$');
                  final regExp = RegExp(pattern);

                  if (value.isEmpty) {
                    return null;
                  } else if (value.contains(' ')) {
                    return 'can not have blank spaces';
                  } else if (!regExp.hasMatch(value)) {
                    return 'Enter a valid email';
                  } else {
                    return null;
                  }
                },
              ),
              SizedBox(
                height: 20,
              ),
              TextFormField(
                obscureText: true,
                decoration: InputDecoration(
                  hintText: 'Password',
                  hintStyle: TextStyle(color: Colors.grey),
                  filled: true,
                  fillColor: MediaQuery.of(context).platformBrightness ==
                          Brightness.light
                      ? kPrimaryColor.withOpacity(0.1)
                      : kContentColorLightTheme.withOpacity(0.1),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(color: Colors.transparent, width: 0),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(
                      color: Colors.transparent,
                    ),
                  ),
                ),
                autovalidateMode: AutovalidateMode.onUserInteraction,
                validator: (value) {
                  if (value.isEmpty) {
                    return null;
                  } else if (value.contains(' ')) {
                    return 'Password can not contain blank Spaces';
                  } else if (value.length < 4) {
                    return 'Enter atleast 4 characters';
                  } else
                    return null;
                },
              ),
              SizedBox(
                height: 20,
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => Signin_scaffold()));
                },
                style: ElevatedButton.styleFrom(
                  primary: kPrimaryColor,
                  padding: EdgeInsets.symmetric(vertical: 20),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)),
                ),
                child: Text(
                  'Login',
                  style: TextStyle(color: Colors.white),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  TextButton(
                    onPressed: () {},
                    child: Text(
                      'Signup',
                      style: TextStyle(color: Colors.black),
                    ),
                  ),
                  TextButton(
                      onPressed: () {},
                      child: Text('Forget Password?',
                          style: TextStyle(color: Colors.black))),
                ],
              ),
              SizedBox(
                height: 30,
              ),
              InkWell(
                // highlightColor: Colors.red,
                splashColor: Colors.red[100],
                borderRadius: BorderRadius.circular(10),

                onTap: () {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (context) => Nav()));
                },
                child: Container(
                  margin: EdgeInsets.all(5),
                  height: 60,
                  decoration: BoxDecoration(
                      // color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(color: kSecondaryColor, width: 1)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        'assets/image/google-icon.jpg',
                        width: 30,
                      ),
                      Text(
                        '  Log in with Google',
                        style: TextStyle(
                            color: kSecondaryColor,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
