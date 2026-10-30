import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class ScrollScreen1 extends StatefulWidget {
  const ScrollScreen1({super.key});

  @override
  State<ScrollScreen1> createState() => _ScrollScreenState();
}

class _ScrollScreenState extends State<ScrollScreen1> {
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
                  'https://lottie.host/ed982ec4-8f87-4c6a-8928-e6ea479a0605/FUhTrqWrGv.json',
                  fit: BoxFit.cover,
                  height: 280,
                  width: 280,
                ),
              ),

              SizedBox(height: height * 0.05),
              Text(
                'Secure Payment',
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
