import 'package:flutter/material.dart';
import 'package:flutter_foodies/login_page.dart';
import 'package:flutter_foodies/onboard_screens/scroll_screen.dart';
import 'package:flutter_foodies/onboard_screens/scroll_screen1.dart';
import 'package:flutter_foodies/onboard_screens/scroll_screen2.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class PageWholeScreen extends StatefulWidget {
  const PageWholeScreen({super.key});

  @override
  State<PageWholeScreen> createState() => _PageWholeScreenState();
}

class _PageWholeScreenState extends State<PageWholeScreen>
    with SingleTickerProviderStateMixin {
  final PageController _pageController = PageController();

  bool isLastPage = false;

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.sizeOf(context).height;
    final width = MediaQuery.sizeOf(context).width;

    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            PageView(
              onPageChanged: (index) {
                setState(() {
                  isLastPage = (index == 2);
                });
              },
              controller: _pageController,
              children: [ScrollScreen(), ScrollScreen1(), ScrollScreen2()],
            ),

            Container(
              alignment: Alignment(0, 0.55),
              child: SmoothPageIndicator(
                controller: _pageController,
                count: 3,
                effect: ExpandingDotsEffect(
                  activeDotColor: const Color.fromARGB(255, 91, 218, 95),
                  dotColor: Colors.grey.shade600,
                  dotHeight: 10,
                  dotWidth: 10,
                  expansionFactor: 2,
                  spacing: 8,
                ),
              ),
            ),

            Padding(
              padding: const EdgeInsets.all(22.0),
              child: Row(
                children: [
                  SizedBox(
                    height: height * 0.05,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.white,
                        shape: CircleBorder(),
                      ),
                      onPressed: () {
                        _pageController.previousPage(
                          duration: Duration(milliseconds: 500),
                          curve: Curves.easeInOut,
                        );
                      },
                      child: Center(
                        child: Icon(Icons.arrow_back_ios_new, size: 18),
                      ),
                    ),
                  ),

                  Spacer(),

                  GestureDetector(
                    onTap: () {
                      _pageController.jumpToPage(2);
                    },
                    child: Container(
                      height: height * 0.044,
                      width: width * 0.18,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(18),
                      ),
                      child: Center(
                        child: Text(
                          'Skip All',
                          style: TextStyle(
                            fontSize: 14,
                            color: Colors.black,
                            fontWeight: .bold,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),

            isLastPage
                ? Positioned(
                    bottom: 90,
                    left: 36,
                    child: Center(
                      child: SizedBox(
                        width: width * 0.8,
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: const Color.fromARGB(
                              255,
                              91,
                              218,
                              95,
                            ),
                          ),
                          onPressed: () {
                            Navigator.of(context).push(
                              MaterialPageRoute(
                                builder: (context) => LoginPage(),
                              ),
                            );
                          },
                          child: Text(
                            'Go to Login',
                            style: TextStyle(fontSize: 16, color: Colors.white),
                          ),
                        ),
                      ),
                    ),
                  )
                : Positioned(
                    bottom: 90,
                    left: 36,
                    child: Center(
                      child: SizedBox(
                        width: width * 0.8,
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: const Color.fromARGB(
                              255,
                              91,
                              218,
                              95,
                            ),
                          ),
                          onPressed: () {
                            _pageController.nextPage(
                              duration: Duration(milliseconds: 400),
                              curve: Curves.easeInOut,
                            );
                          },
                          child: Text(
                            'Next',
                            style: TextStyle(fontSize: 16, color: Colors.white),
                          ),
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
