import 'package:flutter/material.dart';

class DetailCards extends StatefulWidget {
  const DetailCards({super.key});

  @override
  State<DetailCards> createState() => _DetailCardsState();
}

class _DetailCardsState extends State<DetailCards> {
  bool onChange = false;

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.sizeOf(context).height;
    final width = MediaQuery.sizeOf(context).width;
    return Scaffold(
      body: Row(
        children: [
          GestureDetector(
            onTap: () {
              setState(() {
                onChange = !onChange;
              });
            },
            child: Container(
              height: height * 0.08,
              width: width * 0.2,
              decoration: BoxDecoration(
                color: onChange ? Colors.green : Colors.black26,
                borderRadius: BorderRadius.circular(10),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
