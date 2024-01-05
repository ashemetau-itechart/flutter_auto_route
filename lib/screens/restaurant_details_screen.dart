import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

@RoutePage()
class RestaurantDetailsScreen extends StatelessWidget {
  const RestaurantDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Restaurant Details'),
      ),
      body: const Center(
        child: Text('More Information Here'),
      ),
    );
  }
}
