import 'package:cart_assigment_mod11/shoping_bag_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(  const CartApp());
}

class CartApp extends StatelessWidget {
  const CartApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Online Bag',
      home: const ShoppingBag(),
    );
  }
}