import 'package:flower_shop/login/main.dart';
import 'package:flutter/material.dart';

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
    );
  }
}

class Account extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home:  Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
           Padding(padding: EdgeInsets.only(top: 20.0),),
            CircleAvatar(
              radius: 80.0,
              backgroundImage: AssetImage("assets/images/profil2.png"),
            ),
            SizedBox(
              height: 20.0,
            ),
            ListTile(
              title: Text("Username",
              style: TextStyle(
                fontFamily: 'Montserrat',
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
              ),),
              subtitle: Text(account[0].toString(),
              style: TextStyle(
                fontFamily: 'Montserrat',
                fontSize: 15.0,
              ),
              ),             
            ),
            ListTile(
              title: Text("Telepon",
              style: TextStyle(
                fontFamily: 'Montserrat',
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
              ),),
              subtitle: Text(account[2].toString(),
              style: TextStyle(
                fontFamily: 'Montserrat',
                fontSize: 15.0,
              ),
              ),             
            ),
            ListTile(
              title: Text("Alamat",
              style: TextStyle(
                fontFamily: 'Montserrat',
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
              ),),
              subtitle: Text(account[3].toString(),
              style: TextStyle(
                fontFamily: 'Montserrat',
                fontSize: 15.0,
              ),
              ),             
            ),
 
          ]
          ),

    );
  }
}


