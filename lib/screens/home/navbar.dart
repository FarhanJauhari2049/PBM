import 'package:flutter/material.dart';
import 'package:flower_shop/screens/home/components/body.dart';
import 'package:flower_shop/screens/home/cart.dart';
import 'package:flower_shop/screens/home/account.dart';
import 'package:flower_shop/screens/home/orders.dart';

void main() {
  runApp(MaterialApp(
    home: LayoutNavigationBar()
  ));
}
class LayoutNavigationBar extends StatefulWidget {
  @override
  _LayoutNavigationBarState createState() => _LayoutNavigationBarState();
}

class _LayoutNavigationBarState extends State<LayoutNavigationBar> {
  int _currentIndex = 0;

  final List<Widget> _children = [
    HomeScreen(),
    Orders(),
    Account(),
    Cart(),
  ];

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        body: _children[_currentIndex],
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: _currentIndex,
          onTap: onBarTapped,
          type: BottomNavigationBarType.fixed,
          fixedColor: Colors.red,
          items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.assignment),
            label: 'Orders',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart),
            label: 'Cart',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Account',
          ),
        ]
        ),
      );
    }
    void onBarTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }
}