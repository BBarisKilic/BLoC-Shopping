import 'package:bloc_shopping/screens/cart_screen.dart';
import 'package:bloc_shopping/screens/product_list_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(BLoCShopping());
}

class BLoCShopping extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        "/": (BuildContext context) => ProductListScreen(),
        "/cart": (BuildContext context) => CartScreen()
      },
      initialRoute: "/",
    );
  }
}
