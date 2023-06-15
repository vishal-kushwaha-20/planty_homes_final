import 'package:flutter/material.dart';
import 'package:planty_homes_final/models/plant.dart';
class CartScreen extends StatelessWidget {
  final List<Plant> cartItems;

  CartScreen({required this.cartItems, Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cart'),
      ),
      body: Center(
        child: Text('Finalize Order and Payment Processing'),
      ),
    );
  }
}
