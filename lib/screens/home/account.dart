import 'package:flutter/material.dart';

class Account extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Text('Account', 
            style: TextStyle(
                fontSize: 26
            ),
          ),
        ),
      ),
    );
  }
}