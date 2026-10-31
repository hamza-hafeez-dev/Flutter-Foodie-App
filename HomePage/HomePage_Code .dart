import 'package:flutter/material.dart';
import 'package:flutter_foodies/build_home_page/app_bar.dart';
import 'package:flutter_foodies/build_home_page/gridview_home_page/weekly_gridview.dart';
import 'package:flutter_foodies/build_home_page/list_view.dart';
import 'package:flutter_foodies/build_home_page/my_bottom_bar.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomepageState();
}

class _HomepageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.sizeOf(context).height;
    final width = MediaQuery.sizeOf(context).width;

    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 33, 33, 34),
      body: NestedScrollView(
        headerSliverBuilder: (context, innerBoxIsScrolled) {
          return [
            SliverOverlapAbsorber(
              handle: NestedScrollView.sliverOverlapAbsorberHandleFor(context),
              sliver: SliverAppBar(
                automaticallyImplyLeading: false,
                floating: true,
                snap: true,
                backgroundColor: Colors.transparent,
                elevation: 0,
                expandedHeight: 70,
                flexibleSpace: FlexibleSpaceBar(background: const MyAppBar()),
              ),
            ),
          ];
        },
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: .center,
            children: [
              SizedBox(height: height * 0.02),
              Center(
                child: SizedBox(
                  width: width * 0.9,
                  height: height * 0.065,
                  child: TextField(
                    style: TextStyle(color: Colors.white, fontSize: 15),
                    keyboardType: TextInputType.name,
                    decoration: InputDecoration(
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                        borderSide: const BorderSide(
                          color: Color.fromARGB(255, 22, 34, 44),
                        ),
                      ),
                      isDense: true,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                        borderSide: BorderSide(
                          color: Color.fromARGB(255, 22, 34, 44),
                        ),
                      ),
                      prefixIcon: Icon(Icons.search, size: 24),
                      prefixIconColor: Colors.grey,
                      fillColor: const Color.fromARGB(255, 22, 34, 44),
                      filled: true,
                      hintText: 'Search your interesting foods...',
                      hintStyle: TextStyle(fontSize: 15, color: Colors.grey),
                    ),
                  ),
                ),
              ),

              SizedBox(height: height * 0.02),
              Padding(
                padding: const EdgeInsets.only(left: 15, right: 15),
                child: Row(
                  mainAxisAlignment: .spaceBetween,
                  children: [
                    Text(
                      'Special Offer',
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.white,
                        fontWeight: .bold,
                      ),
                    ),

                    Text(
                      'See more..',
                      style: TextStyle(
                        fontSize: 14,
                        color: Colors.green,
                        fontWeight: .bold,
                      ),
                    ),
                  ],
                ),
              ),

              SizedBox(height: height * 0.02),
              Container(
                height: height * 0.22,
                width: width * 0.9,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(40),
                  image: DecorationImage(
                    image: AssetImage('assest/images/adimage.jpg'),
                    fit: BoxFit.cover,
                  ),
                ),
              ),

              SizedBox(height: height * 0.02),
              Padding(
                padding: const EdgeInsets.only(left: 10, right: 10),
                child: SizedBox(
                  height: height * 0.11,
                  child: Expanded(child: MyListView()),
                ),
              ),

              SizedBox(height: height * 0.01),
              Padding(
                padding: const EdgeInsets.only(left: 15, right: 15),
                child: Row(
                  mainAxisAlignment: .spaceBetween,
                  children: [
                    Text(
                      'Weekly Special',
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.white,
                        fontWeight: .bold,
                      ),
                    ),

                    Text(
                      'See all',
                      style: TextStyle(
                        fontSize: 14,
                        color: Colors.green,
                        fontWeight: .bold,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: height * 0.03),
              Padding(
                padding: const EdgeInsets.only(left: 15, right: 15),
                child: WeeklySpecialGrid(),
              ),

              SizedBox(height: height * 0.02),
            ],
          ),
        ),
      ),
      bottomNavigationBar: EasyBottomBar(
        onTabChanged: (index) {
          print("Selected Tab Index: $index");
        },
      ),
    );
  }
}
