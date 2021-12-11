import 'package:flower_shop/detail1/bouquet.dart';
import 'package:flower_shop/detail2/cart.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flower_shop/detail1/productBouquet.dart';

class Details extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(context),
      body: Body(),
    );
  }

  AppBar buildAppBar(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.white,
      leading: IconButton(
        icon: SvgPicture.asset("assets/icons/back.svg"),
        onPressed: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) => LiveSearch()));
        },
      ),
      title:
          Row(mainAxisAlignment: MainAxisAlignment.center, children: <Widget>[
        Text(
          "Baby Breath Bouquet",
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

class Body extends StatelessWidget {
  final Product product;

  const Body({Key key, this.product}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          Image.asset("assets/images/gambar16.jpeg"),
          Padding(padding: EdgeInsets.all(10)),
          Text("Baby Breath Bouquet",
              style: TextStyle(color: Colors.black, fontSize: 20)),
          Padding(padding: EdgeInsets.only(top: 10)),
          Text("265000", style: TextStyle(color: Colors.black, fontSize: 20)),
          Padding(padding: EdgeInsets.all(10)),
          Text(
              "Flower color available in: purple, yellow, pink. Wrapping color varies based on your flower color. If you have special coloer req, you can also add it on notes.",
              style: TextStyle(
                fontSize: 20,  
              ), textAlign: TextAlign.center),
          Padding(padding: EdgeInsets.all(10)),
          Row(mainAxisAlignment: MainAxisAlignment.center, children: <Widget>[
            ElevatedButton.icon(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => AddToCart()));
              },
              icon: SvgPicture.asset("assets/icons/add_to_cart.svg"),
              label: Text(
                "Add to Cart",
                style: TextStyle(color: Colors.black),
              ),
              style: TextButton.styleFrom(backgroundColor: Colors.white),
            ),
            Padding(padding: EdgeInsets.all(16)),
            ElevatedButton(
              style: TextButton.styleFrom(backgroundColor: Colors.white),
              onPressed: () {},
              child: Text(
                "BUY NOW",
                style: TextStyle(
                  color: Colors.black,
                ),
              ),
            )
          ])
        ],
      ),
    );
  }
}
