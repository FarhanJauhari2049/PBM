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
    );
  }
}

class Account extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Column(
          children: <Widget>[
            Padding(padding: EdgeInsets.only(top: 16.0)),
            Text("Your Profile", style: TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  decoration: TextDecoration.none,),),
            Padding(padding: EdgeInsets.only(top: 16.0)),
            TextFormField(
              decoration: InputDecoration(
              hintText: "Masukkan nama lengkap anda",
              labelText: "Nama Lengkap",
              border: OutlineInputBorder(borderRadius: BorderRadius.circular(5.0)),              
              ),
            ),
            Padding(padding: EdgeInsets.only(top: 16.0)),
            TextFormField(
              decoration: InputDecoration(
              hintText: "Masukkan nomor handphone anda",
              labelText: "Nomor Handphone",
              border: OutlineInputBorder(borderRadius: BorderRadius.circular(5.0))
              ),
            ),
            Padding(padding: EdgeInsets.only(top: 16.0)),
            TextFormField(
              decoration: InputDecoration(
              hintText: "Masukkan alamat anda",
              labelText: "Alamat",
              border: OutlineInputBorder(borderRadius: BorderRadius.circular(5.0))
              ),
            ),
            ElevatedButton(
              style: TextButton.styleFrom(backgroundColor: Colors.white),
              onPressed: (){},
              child: Text("Submit",style: TextStyle(
                  color: Colors.black,
                )),
              )
          ],
          
          
        ),
      ),
    );
  }
}