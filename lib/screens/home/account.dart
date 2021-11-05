import 'package:flower_shop/screens/home/navbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class AccountAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(context),
      body: Account(),
    );
  }

  AppBar buildAppBar(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.white,
      title:
          Row(mainAxisAlignment: MainAxisAlignment.center, children: <Widget>[
        Text(
          "Account",
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
            fontSize: 25,
          ),
        ),
      ]),
      leading: IconButton(
        icon: SvgPicture.asset("assets/icons/back.svg"),
        onPressed: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) => LayoutNavigationBar()));
        },
      ),
    );
  }
}

class Account extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Center(
          child: Text('Account', 
            style: TextStyle(
                fontSize: 26
            ),
          ),
        ),
      ),
    );
  }
}