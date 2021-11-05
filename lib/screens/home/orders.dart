import 'package:flower_shop/screens/home/navbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class OrdersAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(context),
      body: Orders(),
    );
  }

  AppBar buildAppBar(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.white,
      title:
          Row(mainAxisAlignment: MainAxisAlignment.center, children: <Widget>[
        Text(
          "Orders",
          textAlign: TextAlign.center,
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
class Orders extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
       home: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text("Get Something Special",
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
                "ORDER NOW",
                style: TextStyle(
                  color: Colors.black,
                ),
              ),
            )
          ]),
    );
  }
}