import 'package:flutter/material.dart';
import 'login.dart';
import 'register.dart';

var listAccount = [
  ['yusnia', 'yusnia12', '087678823145', 'Kediri', Image.asset("assets/images/profil1.jpg")],
  ['jo', 'jo123', '085435675678', 'Jember'],
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
