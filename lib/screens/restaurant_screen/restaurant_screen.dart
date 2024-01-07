import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

@RoutePage()
class RestaurantScreen extends StatelessWidget {
  final int restaurantId;

  const RestaurantScreen({
    super.key,
    @PathParam('restaurantId') required this.restaurantId,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Restaurant $restaurantId'),
      ),
      body: const Center(
        child: Text('More Information Here'),
      ),
    );
  }
}
