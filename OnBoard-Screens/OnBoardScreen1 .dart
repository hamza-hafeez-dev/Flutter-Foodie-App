import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class ScrollScreen extends StatefulWidget {
  const ScrollScreen({super.key});

  @override
  State<ScrollScreen> createState() => _ScrollScreenState();
}

class _ScrollScreenState extends State<ScrollScreen> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.sizeOf(context).height;

    return Scaffold(
      backgroundColor: Colors.black87,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: .end,
            crossAxisAlignment: .center,
            children: [
              SizedBox(height: height * 0.06),
              Center(
                child: LottieBuilder.network(
                  'https://lottie.host/cc061415-1eb3-49f2-a8e2-b89a80f47aa4/JBFF28T9rW.lottie',
                  width: 330,
                  height: 330,
                  fit: BoxFit.cover,
                ),
              ),

              Text(
                'Order for Food',
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
