import 'package:flower_shop/detail/productBouquet.dart';
import 'package:flutter/material.dart';
import 'package:flower_shop/constants.dart';

class Body extends StatelessWidget {
  // final Product product;
  // const Body({
  //   Key key,
  //   this.product,
  // }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Column(
        children: <Widget>[
          Image.asset("assets/images/gambar2.jpeg"),
          // Padding(
          //   padding: const EdgeInsets.symmetric(horizontal: kDefaultPaddin),
          //   child: Text("Categories", 
          //   textAlign: TextAlign.left, 
          //   style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20,),),
          // ),
          // Text(
          //   "\$${product.description}",
          //   style: TextStyle(fontWeight: FontWeight.bold),
          // ),
          // Expanded(
          //       child: Hero(
          //         tag: "${product.id}",
          //         child: Image.asset(
          //           product.image,
          //         ),
          //       ),
          //     ),
          
    ]
    );
    
  }
}