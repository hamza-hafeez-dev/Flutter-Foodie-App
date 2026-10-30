import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_foodies/onboard_screens/page_whole_screen.dart';
import 'package:slide_to_act/slide_to_act.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.sizeOf(context).height;
    // final width = MediaQuery.sizeOf(context).width;

    return Scaffold(
      body: SafeArea(
        child: Container(
          height: double.infinity,
          width: double.infinity,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assest/images/welcomepagepizza.png'),
              fit: BoxFit.cover,
            ),
          ),
          child: Column(
            mainAxisAlignment: .end,
            crossAxisAlignment: .center,
            children: [
              Text(
                'Welcome to\n   Foodies',
                style: TextStyle(
                  fontSize: 40,
                  fontWeight: .bold,
                  color: const Color.fromARGB(255, 27, 153, 31),
                  overflow: TextOverflow.ellipsis,
                ),
              ),

              SizedBox(height: height * 0.02),
              Padding(
                padding: const EdgeInsets.only(left: 20, right: 10),
                child: Text(
                  '''Delicious food delivered to your doorstep.Order from your favorite restaurants anytime, anywhere.''',
                  style: TextStyle(fontSize: 19, color: Colors.white),
                  maxLines: 3,
                ),
              ),

              SizedBox(height: height * 0.08),
              Padding(
                padding: const EdgeInsets.only(left: 35, right: 35),
                child: SlideAction(
                  key: UniqueKey(),
                  onSubmit: () => Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => PageWholeScreen()),
                  ),

                  innerColor: const Color.fromARGB(255, 27, 153, 31),
                  outerColor: Colors.green,
                  sliderButtonIcon: Icon(
                    Icons.arrow_forward,
                    color: Colors.white,
                    size: 25,
                    weight: 15,
                  ),
                  submittedIcon: Icon(
                    Icons.done,
                    color: Colors.white,
                    size: 25,
                  ),
                  height: height * 0.07,
                  text: 'Get Started....!',
                  textStyle: TextStyle(
                    fontSize: 17,
                    fontWeight: .bold,
                    color: Colors.white,
                    overflow: TextOverflow.ellipsis,
                  ),
                  sliderButtonIconPadding: max(9, 9),
                ),
              ),
              SizedBox(height: height * 0.12),
            ],
          ),
        ),
      ),
    );
  }
}
