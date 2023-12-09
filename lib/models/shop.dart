import 'package:flutter/material.dart';
import 'package:food_shop_fyp_app/models/food.dart';

class Shop extends ChangeNotifier {
  final List<Food> _foodMenu = [
    Food(
      name: "Salmon Sushi",
      price: "4",
      imagePath: "assets/images/salmon_sushi.png",
      rating: "5.0",
    ),
    Food(
      name: "Tuna Sushi",
      price: "4",
      imagePath: "assets/images/tuna_sushi.png",
      rating: "5.0",
    ),
  ];

  final List<Food> _cart = [];

  List<Food> get foodMenu => _foodMenu;
  List<Food> get cart => _cart;

  void addToCart(Food foodItem, int quantity) {
    for (int i = 0; i < quantity; i++) {
      _cart.add(foodItem);
    }
    notifyListeners();
  }

  void removeFromCart(Food food) {
    _cart.remove(food);
    notifyListeners();
  }
}
