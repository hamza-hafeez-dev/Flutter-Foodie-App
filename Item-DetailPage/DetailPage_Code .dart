import 'package:flutter/material.dart';
import 'package:flutter_foodies/build_home_page/gridview_home_page/grid_list_tiles.dart';
import 'package:flutter_foodies/product_detail_page/bottom_detailpage.dart';

class DetailPage extends StatefulWidget {
  final SpecialFoodModel foodItem;

  const DetailPage({super.key, required this.foodItem});

  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  bool onchange = false;
  String selectedLevel = 'Low';

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.sizeOf(context).height;
    final width = MediaQuery.sizeOf(context).width;
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 33, 33, 34),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Stack(
            children: [
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  mainAxisAlignment: .center,
                  children: [
                    // Main Image
                    Center(
                      child: Container(
                        height: height * 0.35,
                        width: width * 0.8,
                        decoration: BoxDecoration(
                          color: const Color.fromARGB(0, 0, 0, 0),
                        ),
                        child: Hero(
                          curve: Curves.easeInOut,
                          tag: widget.foodItem.imageUri,
                          reverseCurve: Curves.easeInOut,
                          child: Container(
                            height: height * 0.15,
                            width: height * 0.15,
                            decoration: const BoxDecoration(
                              shape: BoxShape.circle,
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.black54,
                                  blurRadius: 20,
                                  offset: Offset(0, 9),
                                ),
                              ],
                            ),
                            child: ClipOval(
                              child: Image.asset(
                                widget.foodItem.imageUri,
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),

                    SizedBox(height: height * 0.05),
                    Align(
                      alignment: AlignmentGeometry.centerLeft,
                      child: Text(
                        maxLines: 1,
                        widget.foodItem.title,
                        style: TextStyle(
                          overflow: TextOverflow.ellipsis,
                          fontSize: 30,
                          fontWeight: .bold,
                          color: Colors.white,
                        ),
                      ),
                    ),

                    SizedBox(height: height * 0.01),
                    Align(
                      alignment: AlignmentGeometry.centerLeft,
                      child: Text(
                        'Chef\'s Special • Free Delivery • 100% Halal ',
                        style: TextStyle(
                          fontSize: 15,
                          color: const Color.fromARGB(255, 42, 107, 44),
                          fontWeight: .bold,
                        ),
                      ),
                    ),

                    SizedBox(height: height * 0.03),
                    Row(
                      mainAxisAlignment: .spaceBetween,
                      children: [
                        Container(
                          height: height * 0.035,
                          width: width * 0.4,
                          decoration: BoxDecoration(
                            color: Colors.black26,
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(color: Colors.black45),
                          ),
                          child: Row(
                            mainAxisAlignment: .center,
                            children: [
                              Icon(Icons.star, color: Colors.yellow),
                              SizedBox(width: 5),
                              Text(
                                '4.9',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 12,
                                ),
                              ),
                              SizedBox(width: 5),
                              Expanded(
                                child: Text(
                                  maxLines: 1,
                                  '(12k + reviews)',
                                  style: TextStyle(
                                    overflow: TextOverflow.ellipsis,
                                    color: Colors.white,
                                    fontSize: 11,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),

                        Container(
                          height: height * 0.035,
                          width: width * 0.3,
                          decoration: BoxDecoration(
                            color: Colors.black26,
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(color: Colors.black45),
                          ),
                          child: Row(
                            mainAxisAlignment: .center,
                            children: [
                              Icon(Icons.timer_outlined, color: Colors.yellow),
                              SizedBox(width: 5),
                              Text(
                                '20 - 25 min',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 12,
                                ),
                              ),
                              SizedBox(width: 5),
                            ],
                          ),
                        ),
                      ],
                    ),

                    SizedBox(height: height * 0.02),
                    Align(
                      alignment: Alignment(0.9, 0),
                      child: Text(
                        widget.foodItem.price,
                        style: TextStyle(
                          fontSize: 40,
                          color: Colors.green,
                          fontWeight: .bold,
                        ),
                      ),
                    ),

                    SizedBox(height: height * 0.02),
                    Container(
                      width: width * 0.9,
                      decoration: BoxDecoration(
                        color: Colors.black38,
                        borderRadius: BorderRadius.circular(15),
                        border: Border.all(color: Colors.black54),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(15),
                        child: Column(
                          mainAxisAlignment: .start,
                          children: [
                            Text(
                              'Description',
                              style: TextStyle(
                                fontSize: 20,
                                color: Colors.white,
                                fontWeight: .bold,
                              ),
                            ),
                            SizedBox(height: height * 0.01),
                            Text(
                              widget.foodItem.description,
                              style: TextStyle(
                                fontSize: 16,
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),

                    SizedBox(height: height * 0.02),
                    Align(
                      alignment: AlignmentGeometry.centerLeft,
                      child: Text(
                        'Spice Level',
                        style: TextStyle(fontSize: 18, color: Colors.white),
                      ),
                    ),

                    SizedBox(height: height * 0.02),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        for (String level in ['Low', 'Mid', 'High']) ...[
                          _buildOptionButton(
                            context: context,
                            label: level,
                            isSelected: selectedLevel == level,
                            onTap: () {
                              setState(() {
                                selectedLevel = level;
                              });
                            },
                          ),
                          if (level != 'High')
                            SizedBox(
                              width: MediaQuery.of(context).size.width * 0.02,
                            ),
                        ],
                      ],
                    ),
                  ],
                ),
              ),
              Positioned(
                top: 12,
                left: 12,
                child: Row(
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.of(context).pop();
                      },
                      child: Container(
                        height: height * 0.05,
                        width: width * 0.13,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.grey,
                        ),
                        child: Icon(
                          Icons.arrow_back_ios_new,
                          color: Colors.white,
                          size: 20,
                          blendMode: BlendMode.lighten,
                          shadows: [
                            BoxShadow(
                              blurRadius: 20,
                              color: Colors.black87,
                              offset: Offset(0, -1),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomBarDPage(fooditem: widget.foodItem),
    );
  }
}

Widget _buildOptionButton({
  required BuildContext context,
  required String label,
  required bool isSelected,
  required VoidCallback onTap,
}) {
  // Get screen size dynamically using MediaQuery
  final screenSize = MediaQuery.of(context).size;
  final double screenWidth = screenSize.width;

  return GestureDetector(
    onTap: onTap,
    child: AnimatedContainer(
      duration: const Duration(milliseconds: 200),
      // Set height and width relative to the screen size
      height: screenSize.height * 0.06,
      width: screenWidth * 0.25,
      decoration: BoxDecoration(
        color: isSelected ? Colors.green : Colors.grey.shade900,
        borderRadius: BorderRadius.circular(16),
        border: Border.all(
          color: isSelected ? Colors.greenAccent : Colors.white24,
          width: isSelected ? 2 : 1,
        ),
      ),
      child: Center(
        child: Text(
          label,
          style: TextStyle(
            // Scale font size according to screen width
            fontSize: screenWidth * 0.04,
            fontWeight: isSelected ? FontWeight.bold : FontWeight.normal,
            color: isSelected ? Colors.black : Colors.white,
          ),
        ),
      ),
    ),
  );
}
