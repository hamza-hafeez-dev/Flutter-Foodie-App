import 'package:flutter/material.dart';
import 'package:flutter_foodies/build_home_page/list_tiles.dart';

class MyListView extends StatefulWidget {
  const MyListView({super.key});

  @override
  State<MyListView> createState() => _MyListViewState();
}

class _MyListViewState extends State<MyListView> {
  final List<FoodModelClass> foodList = [
    FoodModelClass(
      title: 'Vegetarian',
      imageUri: 'assest/images/vegetarian.png',
    ),
    FoodModelClass(title: 'Cake', imageUri: 'assest/images/strawberrycake.png'),
    FoodModelClass(title: 'Pizza', imageUri: 'assest/images/pizzabg.png'),
    FoodModelClass(title: 'Noodles', imageUri: 'assest/images/noodlesbg.png'),
    FoodModelClass(title: 'Melonpan', imageUri: 'assest/images/melonpan.png'),
    FoodModelClass(title: 'Hamburger', imageUri: 'assest/images/hamburger.png'),
    FoodModelClass(title: 'Drink', imageUri: 'assest/images/drink.png'),
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      scrollDirection: Axis.horizontal,
      itemBuilder: (context, index) {
        return ListTiles(foodModelClass: foodList[index]);
      },
      separatorBuilder: (context, index) {
        return SizedBox(width: 10);
      },
      itemCount: foodList.length,
    );
  }
}
