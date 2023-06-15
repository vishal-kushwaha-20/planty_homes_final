import 'package:get/get.dart';
import 'package:planty_homes_final/models/plant.dart';

class PlantsController extends GetxController {
  var plants = <Plant>[
    Plant(
      name: 'Plant 1',
      image: 'assets/plant.png',
      price: 9.99,
      guidelines: 'Guidelines for Plant 1',
    ),
    Plant(
      name: 'Plant 2',
      image: 'assets/plant2.png',
      price: 14.99,
      guidelines: 'Guidelines for Plant 2',
    ),
    // Add more plants as needed
  ].obs;
}
