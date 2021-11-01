import 'package:flower_shop/detail/productBouquet.dart';
import 'package:flutter/material.dart';
import 'package:flower_shop/constants.dart';
import 'package:flower_shop/screens/order/details.dart';

import 'item_card.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
        // mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          //   Padding(
          //     padding: const EdgeInsets.symmetric(horizontal: kDefaultPaddin),
          //     child: Text(
          //       "Flower Shop",
          //       style: Theme.of(context)
          //           .textTheme
          //           .headline5
          //           .copyWith(fontWeight: FontWeight.bold),
          //     ),
          //   ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: kDefaultPaddin),
              child: GridView.builder(
                  itemCount: products.length,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    mainAxisSpacing: kDefaultPaddin,
                    crossAxisSpacing: kDefaultPaddin,
                    childAspectRatio: 0.75,
                  ),
                  itemBuilder: (context, index) => ItemCard(
                        product: products[index],
                        press: () => Navigator.push(context,
                            MaterialPageRoute(builder: (context) => Details())),
                      )),
            ),
          )
        ]);
  }
}
