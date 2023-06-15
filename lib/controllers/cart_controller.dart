import 'package:get/get.dart';
import 'package:planty_homes_final/models/plant.dart';

class CartController extends GetxController {
  final List<Plant> cartItems = [];

  void addToCart(Plant plant) {
    cartItems.add(plant);
  }
}
