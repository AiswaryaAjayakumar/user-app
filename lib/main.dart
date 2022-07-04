import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:user_app/sreens/register.dart';

void main()
{
  runApp(UserApp());
}
class UserApp extends StatelessWidget {
 // const UserApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("User App"),
        ),
        body:Register(),
      ),
    );
  }
}
