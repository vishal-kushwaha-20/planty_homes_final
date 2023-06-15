import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:planty_homes_final/controllers/plants_controller.dart';

class HomeScreen extends StatelessWidget {
  final PlantsController _plantsController = Get.put(PlantsController());

  HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Plant Shop'),
      ),
      body: Obx(() {
        return ListView.builder(
          itemCount: _plantsController.plants.length,
          itemBuilder: (context, index) {
            final plant = _plantsController.plants[index];
            return ListTile(
              leading: Image.asset(
              plant.image,
              width: 500, // Adjust the width as desired
              height: 500, // Adjust the height as desired
              ),
              title: Text(plant.name),
              subtitle: Text('\$${plant.price.toStringAsFixed(2)}'),
              onTap: () {
                // Navigate to the second screen to order the plant
                Get.toNamed('/order', arguments: plant);
              },
            );
          },
        );
      }),
    );
  }
}
