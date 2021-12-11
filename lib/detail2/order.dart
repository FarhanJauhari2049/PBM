import 'package:flutter/material.dart';

class AddToOrder extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(context),
      body: ListView.builder(
        itemBuilder: (context, index) {
          return Card(
            child: ListTile(
                title: Text(
                  "Riwayat belanja",
                  style: TextStyle(fontSize: 30)
                ),
                subtitle: Text("anda telah membeli barang ini"),
                leading: CircleAvatar(
                  child: Image(image: AssetImage("assets/images/gambar2.jpeg"),)
                )
            ),
          );
        },
        
      ),
        );
  }

   AppBar buildAppBar(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.white,
      title:
          Row(mainAxisAlignment: MainAxisAlignment.center, children: <Widget>[
        Text(
          "Cart",
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