import 'package:flutter/material.dart';
import 'package:flutter_foodies/build_home_page/gridview_home_page/grid_list_tiles.dart';

class BottomBarDPage extends StatefulWidget {
  final SpecialFoodModel fooditem;
  const BottomBarDPage({super.key, required this.fooditem});

  @override
  State<BottomBarDPage> createState() => _BottomBarDPageState();
}

class _BottomBarDPageState extends State<BottomBarDPage> {
  int quantity = 1;

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.sizeOf(context).height;
    final width = MediaQuery.sizeOf(context).width;

    double totalPrice = double.parse(widget.fooditem.price) * quantity;
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Container(
        height: height * 0.09,
        width: width * 0.95,
        padding: const EdgeInsets.symmetric(horizontal: 12),
        decoration: BoxDecoration(
          color: Colors.black26,
          borderRadius: BorderRadius.circular(24),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            // Quantity Counter Container
            Container(
              height: height * 0.06,
              decoration: BoxDecoration(
                color: Colors.black38,
                borderRadius: BorderRadius.circular(16),
              ),
              child: Row(
                children: [
                  // Minus Button
                  IconButton(
                    iconSize: 18,
                    color: Colors.white,
                    icon: const Icon(Icons.remove),
                    onPressed: () {
                      if (quantity > 1) {
                        setState(() {
                          quantity--;
                        });
                      }
                    },
                  ),
                  // Quantity Display Text
                  Text(
                    '$quantity',
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  // Plus Button
                  IconButton(
                    iconSize: 18,
                    color: Colors.white,
                    icon: const Icon(Icons.add),
                    onPressed: () {
                      setState(() {
                        quantity++;
                      });
                    },
                  ),
                ],
              ),
            ),

            const SizedBox(width: 12),

            // Add to Cart Button with Dynamic Total Price
            Expanded(
              child: SizedBox(
                height: height * 0.06,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.green, // Green color
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(16),
                    ),
                  ),
                  onPressed: () {
                    setState(() {
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                          backgroundColor: Colors.green,
                          duration: Duration(milliseconds: 900),
                          content: Text(
                            'Your Item is Added in Cart',
                            style: TextStyle(
                              fontSize: 16,
                              color: Colors.white,
                              fontWeight: .bold,
                            ),
                          ),
                        ),
                      );
                    });
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        'Add to Cart',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      // Multiplied Total Price Display
                      Text(
                        '\$${totalPrice.toStringAsFixed(2)}',
                        style: const TextStyle(
                          color: Colors.black,
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
