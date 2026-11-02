import 'package:flutter/material.dart';
import 'package:flutter_foodies/build_home_page/gridview_home_page/grid_list_tiles.dart';

class WeeklySpecialGrid extends StatelessWidget {
  WeeklySpecialGrid({super.key});

  // Food Items ki List
  final List<SpecialFoodModel> specialFoodList = [
    SpecialFoodModel(
      title: 'BBQ Roasted Chicken',
      price: '11.98',
      imageUri: 'assest/images/chickendish.jpg',
      description: 'Juicy roasted chicken glazed with rich smoky BBQ sauce, served with grilled veggies.',
    ),
    SpecialFoodModel(
      title: 'Creamy Alfredo Pasta',
      price: '9.50',
      imageUri: 'assest/images/pastadish.jpg',
      description: 'Penne pasta tossed in rich garlic parmesan cream sauce, topped with fresh cherry tomatoes.',
    ),
    SpecialFoodModel(
      title: 'Gourmet Cheeseburger',
      price: '7.99',
      imageUri: 'assest/images/burgerdish.jpg',
      description: 'Flame-grilled beef patty stacked with melted cheddar, fresh lettuce, tomatoes, and secret sauce.',
    ),
    SpecialFoodModel(
      title: 'Fresh Sushi Platter',
      price: '14.50',
      imageUri: 'assest/images/japanesedish.jpg',
      description: 'Premium assortment of salmon, tuna, and avocado rolls served with pickled ginger and soy sauce.',
    ),
    SpecialFoodModel(
      title: 'Ramen Noodle Bowl',
      price: '8.98',
      imageUri: 'assest/images/noodlesdish.jpg',
      description: 'Traditional Japanese noodles in rich savory broth, served with soft-boiled egg and fresh green onions.',
    ),
    SpecialFoodModel(
      title: 'Pepperoni Pizza',
      price: '10.99',
      imageUri: 'assest/images/pizzadish.jpg',
      description: 'Crispy hand-tossed crust topped with rich tomato sauce, melted mozzarella, and spicy beef pepperoni.',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      shrinkWrap: true,
      physics: const BouncingScrollPhysics(),
      itemCount: specialFoodList.length,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2, // 2 Columns
        crossAxisSpacing: 25,
        mainAxisSpacing: 20,
        childAspectRatio: 0.8,
      ),
      itemBuilder: (context, index) {
        return FoodGridTile(foodItem: specialFoodList[index]);
      },
    );
  }
}
