import 'package:flutter/material.dart';
import 'package:foodies/pages/food/popular_food_detail.dart';
import 'package:foodies/pages/food/recommended_food_detail.dart';
import 'package:get/get.dart';

import 'home/main_food_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const RecommendedFoodDetail());
  }
}





































































