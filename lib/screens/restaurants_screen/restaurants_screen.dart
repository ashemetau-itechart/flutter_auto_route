import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_auto_route/entities/restaurant.dart';
import 'package:flutter_auto_route/routes/app_router.gr.dart';
import 'package:flutter_auto_route/routes/router_path.dart';
import 'package:flutter_auto_route/screens/restaurants_screen/restaurants_bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class RestaurantsScreen extends StatelessWidget {
  const RestaurantsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Restaurants'),
        actions: [
          IconButton(
            icon: const Icon(Icons.settings),
            onPressed: () {
              context.router.pushNamed(RouterPath.settings);
            },
          ),
        ],
      ),
      body: BlocBuilder<RestaurantsCubit, List<Restaurant>>(
        builder: (context, restaurants) {
          return ListView.builder(
            restorationId: 'restaurantsList',
            itemCount: restaurants.length,
            itemBuilder: (BuildContext context, int index) {
              final restaurant = restaurants[index];
              return ListTile(
                  title: Text('Restaurant ${restaurant.id}'),
                  leading: const CircleAvatar(
                    foregroundImage:
                        AssetImage('assets/images/flutter_logo.png'),
                  ),
                  onTap: () {
                    context.router
                        .push(RestaurantRoute(restaurantId: restaurant.id));
                  });
            },
          );
        },
      ),
    );
  }
}
