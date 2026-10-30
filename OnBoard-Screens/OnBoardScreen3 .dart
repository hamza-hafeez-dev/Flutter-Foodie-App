import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class ScrollScreen2 extends StatefulWidget {
  const ScrollScreen2({super.key});

  @override
  State<ScrollScreen2> createState() => _ScrollScreenState();
}

class _ScrollScreenState extends State<ScrollScreen2> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.sizeOf(context).height;

    return Scaffold(
      backgroundColor: Colors.black87,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: .center,
            crossAxisAlignment: .center,
            children: [
              SizedBox(height: height * 0.08),
              Center(
                child: LottieBuilder.network(
                  'https://lottie.host/a9e87408-ab84-4e0d-86ef-8ab86104dea0/6n4gKDt1Nt.json',
                  fit: BoxFit.cover,
                  height: 280,
                  width: 280,
                ),
              ),

              SizedBox(height: height * 0.05),
              Text(
                'Fast Delivery',
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: .bold,
                  color: Colors.green,
                ),
              ),

              SizedBox(height: height * 0.025),
              Padding(
                padding: const EdgeInsets.only(left: 20, right: 20),
                child: Text(
                  'Discover your favorite meals and get them delivered to your doorstep quickly and hassle-free.',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: .bold,
                    color: Colors.white,
                    overflow: TextOverflow.ellipsis,
                  ),
                  maxLines: 3,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
