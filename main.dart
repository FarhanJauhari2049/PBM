import 'package:flutter/material.dart';
import 'login.dart';
import 'register.dart';

var listAccount = [
  ['yusniaa', 'yusnia12', '0876788xxxxx', 'Kediri'],
  ['jo', 'jo123', '08543567xxxx', 'Jember'],
];
var account = [
  
];

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    title: "Login Register Page",
    initialRoute: "/",
    routes: {
      "/": (context) => LoginPage(),
      RegisterPage.routeName: (context) => RegisterPage(),
    },
  ));
}
