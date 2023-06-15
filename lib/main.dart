import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:planty_homes_final/screens/home_screen.dart';
import 'package:planty_homes_final/screens/order_screen.dart';
import 'package:planty_homes_final/screens/cart_screen.dart';
import 'package:planty_homes_final/controllers/cart_controller.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Get.put<CartController>(CartController()); // Register the CartController globally
    return GetMaterialApp(
      title: 'Plant Shop',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      initialRoute: '/',
      getPages: [
        GetPage(name: '/', page: () => HomeScreen()),
        GetPage(name: '/order', page: () => OrderScreen()),
        GetPage(name: '/cart', page: () => CartScreen(cartItems: [],)),
      ],
    );
  }
}
