import 'package:flutter/material.dart';
import 'package:flutter_foodies/product_detail_page/detailpage.dart';

class SpecialFoodModel {
  final String title;
  final String price;
  final String imageUri;
  final String description;

  SpecialFoodModel({
    required this.title,
    required this.price,
    required this.imageUri,
    required this.description,
  });
}

class FoodGridTile extends StatelessWidget {
  final SpecialFoodModel foodItem;

  const FoodGridTile({super.key, required this.foodItem});

  @override
  Widget build(BuildContext context) {
    // Screen dimensions using MediaQuery
    final height = MediaQuery.sizeOf(context).height;
    final width = MediaQuery.sizeOf(context).width;

    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) => DetailPage(foodItem: foodItem),
          ),
        );
      },
      child: Stack(
        alignment: Alignment.topCenter,
        children: [
          // White Card Container
          Container(
            margin: EdgeInsets.only(top: height * 0.05),
            padding: EdgeInsets.only(
              top: height * 0.08,
              left: width * 0.03,
              right: width * 0.03,
              bottom: height * 0.015,
            ),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(width * 0.05),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                // Title Text
                SizedBox(height: height * 0.01),
                Expanded(
                  child: Text(
                    foodItem.title,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                      fontSize: width * 0.04,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                      height: 1.2,
                    ),
                  ),
                ),

                // Price Text
                Expanded(
                  child: Align(
                    alignment: Alignment.bottomRight,
                    child: Text(
                      '\$${foodItem.price}',
                      style: TextStyle(
                        fontSize: width * 0.045,
                        fontWeight: FontWeight.bold,
                        color: const Color(0xFF00C853),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),

          // Circular Overlapping Image
          Positioned(
            top: 0,
            child: Hero(
              tag: foodItem.imageUri,
              curve: Curves.easeInOut,
              reverseCurve: Curves.easeInOut,
              child: Container(
                height: height * 0.13,
                width: height * 0.13,
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black26,
                      blurRadius: 8,
                      offset: Offset(0, 4),
                    ),
                  ],
                ),
                child: ClipOval(
                  child: Image.asset(foodItem.imageUri, fit: BoxFit.cover),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
