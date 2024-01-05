import 'package:flutter_auto_route/entities/restaurant.dart';

class RestaurantsService {
  Future<List<Restaurant>> getRestaurants() async {
    return Future.delayed(
        const Duration(milliseconds: 10),
        () => const [
              Restaurant(1),
              Restaurant(2),
              Restaurant(3),
              Restaurant(4),
              Restaurant(5),
            ]);
  }
}
