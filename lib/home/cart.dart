import 'package:flower_shop/home/navbar.dart';
import 'package:flutter/material.dart';

class CartAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(context),
      body: Cart(),
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

class Cart extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text("Your Cart is Empty",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                  decoration: TextDecoration.none,
                )),
            ElevatedButton(
              style: TextButton.styleFrom(backgroundColor: Colors.white),
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => LayoutNavigationBar()));
              },
              child: Text(
                "BUY NOW",
                style: TextStyle(
                  color: Colors.black,
                ),
              ),
            )
          ]),
    );
  }
}
