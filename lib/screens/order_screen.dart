import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:planty_homes_final/models/plant.dart';
import 'package:planty_homes_final/screens/cart_screen.dart';

class OrderScreen extends StatelessWidget {
  final List<Plant> cartItems = [];

  @override
  Widget build(BuildContext context) {
    final Plant plant = Get.arguments as Plant;
    return Scaffold(
      appBar: AppBar(
        title: Text('Order'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(plant.image),
            Text(plant.name),
            Text('\$${plant.price.toStringAsFixed(2)}'),
            ElevatedButton(
              child: Text('Add to Cart'),
              onPressed: () {
                cartItems.add(plant);
                Get.to(CartScreen(cartItems: cartItems)); // Provide cartItems argument
              },
            ),
          ],
        ),
      ),
    );
  }
}
