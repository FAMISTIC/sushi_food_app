import 'package:flutter/material.dart';
import 'package:food_shop_fyp_app/pages/cart_page.dart';
import 'package:provider/provider.dart';
import 'pages/intro_page.dart';
import 'pages/menu_page.dart';
import 'models/shop.dart';

void main() {
  //runApp(const MyApp());
  runApp(ChangeNotifierProvider(
    create: (context) => Shop(),
    child: const MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: const IntroPage(),
        routes: {
          '/intropage': (context) => const IntroPage(),
          '/menupage': (context) => const MenuPage(),
          '/cartpage': (context) => const CartPage(),
        });
  }
}
