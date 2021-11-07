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
            Padding(padding: EdgeInsets.all(16.0)),
            Text("Your Profile", style: TextStyle(
                  color: Colors.black,
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  decoration: TextDecoration.none,),
                  ),
            Padding(padding: EdgeInsets.all(16.0)),
            Text("Name   : Mawar Melati", style: TextStyle(color: Colors.black54, fontSize: 15,decoration: TextDecoration.none)),
            Padding(padding: EdgeInsets.all(16.0)),
            Text("Phone  : 087654367762", style: TextStyle(color: Colors.black54, fontSize: 15,decoration: TextDecoration.none)),
            Padding(padding: EdgeInsets.all(16.0)),
            Text("Address  : Jakarta Selatan", style: TextStyle(color: Colors.black54, fontSize: 15,decoration: TextDecoration.none)),
            Padding(padding: EdgeInsets.all(16.0)),
            IconButton(
              onPressed: (){
                Navigator.push(context,
                MaterialPageRoute(builder: (context) => Edit()));
              }, 
              icon: Icon(Icons.edit),
              )
            
          ]
          ),

    );
  }
}

class Edit extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Column(
          children: <Widget>[
            Padding(padding: EdgeInsets.all(16.0)),
            Text("Edit Your Profile", style: TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  decoration: TextDecoration.none,),),
            Padding(padding: EdgeInsets.all(10.0)),
            TextFormField(
              decoration: InputDecoration(
              hintText: "Masukkan nama lengkap anda",
              labelText: "Nama Lengkap",
              border: OutlineInputBorder(borderRadius: BorderRadius.circular(5.0)),              
              ),
            ),
            Padding(padding: EdgeInsets.all(16.0)),
            TextFormField(
              decoration: InputDecoration(
              hintText: "Masukkan nomor handphone anda",
              labelText: "Nomor Handphone",
              border: OutlineInputBorder(borderRadius: BorderRadius.circular(5.0))
              ),
            ),
            Padding(padding: EdgeInsets.all(16.0)),
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