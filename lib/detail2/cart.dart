import 'package:flower_shop/constants.dart';
import 'package:flower_shop/detail2/order.dart';
import 'package:flutter/material.dart';

class AddToCart extends StatelessWidget {
    @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(context),
      body: Container(
        padding: EdgeInsets.all(20.0),
        child: ListView(
          children: <Widget>[
            Center(
              child: Column(
                children: <Widget>[
                  _gambar(),
                  _titleDescription(context),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _gambar() {
    return Image.asset(
      "assets/images/gambar2.jpeg",
      width: 170.0,
      height: 170.0,
    );
  }

  Widget _titleDescription(BuildContext context) {
    return Column(
      children: <Widget>[
        Padding(
          padding: EdgeInsets.only(top: 16.0),
        ),
        Text(
          "Baby Breath Bouquet",
          style: TextStyle(
            color: kTextColor,
            fontSize: 20.0,
            fontWeight: FontWeight.bold,
          ),
        ),
        Padding(
          padding: EdgeInsets.only(top: 12.0),
        ),
        Text(
          "Rp.256000",
          style: TextStyle(
            fontSize: 20.0,
            color: kTextColor,
          ),
          textAlign: TextAlign.center,
        ),
        IconButton(onPressed: (){}, 
        icon: Icon(Icons.add_outlined)),
        IconButton(onPressed: (){}, 
        icon: Icon(Icons.minimize_outlined)),
        Container(
          width: 200,
          height: 45,
          child: TextButton(
            style: TextButton.styleFrom(
              backgroundColor: Color(0xffF18265),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
            ),
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => AddToOrder()));
            },
            child: Text(
              "Checkout",
              style: TextStyle(
                color: Colors.white,
                fontSize: 20,
              ),
            ),
          ),
        ),
      ],
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

// class Cart extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       home: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: <Widget>[
//             Text("Your Cart is Empty",
//                 style: TextStyle(
//                   color: Colors.black,
//                   fontSize: 20,
//                   decoration: TextDecoration.none,
//                 )),
//             ElevatedButton(
//               style: TextButton.styleFrom(backgroundColor: Colors.white),
//               onPressed: () {
//                 Navigator.push(
//                     context,
//                     MaterialPageRoute(
//                         builder: (context) => LayoutNavigationBar()));
//               },
//               child: Text(
//                 "BUY NOW",
//                 style: TextStyle(
//                   color: Colors.black,
//                 ),
//               ),
//             )
//           ]),
//     );
//   }
// }
