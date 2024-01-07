import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_auto_route/screens/restaurants_screen/restaurants_bloc.dart';
import 'package:flutter_auto_route/screens/restaurants_screen/restaurants_screen.dart';
import 'package:flutter_auto_route/services/restaurants_service.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

@RoutePage()
class RestaurantsFlow extends StatelessWidget {
  const RestaurantsFlow({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => RestaurantsCubit(context.read<RestaurantsService>())
        ..loadRestaurants(),
      child: const RestaurantsScreen(),
    );
  }
}
