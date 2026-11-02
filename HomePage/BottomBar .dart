import 'package:flutter/material.dart';

// 1. Standalone Easy Bottom Bar Widget
class EasyBottomBar extends StatefulWidget {
  final Function(int)? onTabChanged;

  const EasyBottomBar({super.key, this.onTabChanged});

  @override
  State<EasyBottomBar> createState() => _EasyBottomBarState();
}

class _EasyBottomBarState extends State<EasyBottomBar> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      decoration: BoxDecoration(color: Colors.black45),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          _buildIconButton(Icons.home, 0),
          _buildIconButton(Icons.email, 1),
          _buildIconButton(Icons.person, 2),
          _buildIconButton(Icons.settings, 3),
          _buildIconButton(Icons.shopping_bag, 4),
        ],
      ),
    );
  }

  Widget _buildIconButton(IconData icon, int index) {
    final isSelected = selectedIndex == index;

    return InkWell(
      onTap: () {
        setState(() {
          selectedIndex = index;
        });
        if (widget.onTabChanged != null) {
          widget.onTabChanged!(index);
        }
      },
      borderRadius: BorderRadius.circular(20),
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Icon(
          icon,
          size: 28,
          color: isSelected ? Colors.green : Colors.white,
        ),
      ),
    );
  }
}
