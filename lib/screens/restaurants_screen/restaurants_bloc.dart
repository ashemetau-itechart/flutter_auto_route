import 'package:flutter_auto_route/entities/restaurant.dart';
import 'package:flutter_auto_route/services/restaurants_service.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class RestaurantsCubit extends Cubit<List<Restaurant>> {
  final RestaurantsService service;

  RestaurantsCubit(this.service) : super([]);

  Future<void> loadRestaurants() async {
    final restaurants = await service.getRestaurants();
    emit(restaurants);
  }
}
