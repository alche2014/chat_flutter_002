import 'package:chatapp/HR_app/Theme.dart';
import 'package:chatapp/HR_app/signup_screens/signin_scaffold.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      // theme: lightThemeData(context),
      // darkTheme: darkThemeData(context),
      // themeMode: ThemeMode.system,
      // theme: ThemeData(primaryColor: Colors.white),
      theme: lightThemeData(context),
      darkTheme: darkThemeData(context),
      home: Signin_scaffold(),
    );
  }
}
