import 'package:flutter/material.dart';
import 'package:flutter_tests/explore.dart';
import 'package:flutter_tests/profile.dart';


class HomePage extends StatefulWidget {
  const HomePage({ Key? key }) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int pageIndex = 3;
  
  final pages = [
    const Explore(),
    const Explore(),
    const Profile(),
    const Profile(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[pageIndex],
      bottomNavigationBar: buildMyNavBar(context),
    );
  }
  Container buildMyNavBar(BuildContext context) {
    return Container(
      height: 60,
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          IconButton(
            enableFeedback: false,
            onPressed: () {
              setState(() {
                pageIndex = 0;
              });
            },
            icon: pageIndex == 0
                ? const Icon(
                    Icons.home_filled,
                   color: Color(0xFF013A4D),
                    size: 25,
                  )
                : const Icon(
                    Icons.home_outlined,
                    color: Color(0xFF8E99AF),
                    size: 25,
                  ),
          ),
          IconButton(
            enableFeedback: false,
            onPressed: () {
              setState(() {
                pageIndex = 1;
              });
            },
            icon: pageIndex == 1
                ? const Icon(
                    Icons.explore,
                   color: Color(0xFF013A4D),
                    size: 25,
                  )
                : const Icon(
                    Icons.explore_outlined,
                    color: Color(0xFF8E99AF),
                    size: 25,
                  ),
          ),
          IconButton(
            enableFeedback: false,
            onPressed: () {
              setState(() {
                pageIndex = 2;
              });
            },
            icon: pageIndex == 2
                ? const Icon(
                    Icons.shopping_cart_rounded,
                  color: Color(0xFF013A4D),
                    size: 25,
                  )
                : const Icon(
                    Icons.shopping_cart_outlined,
                    color: Color(0xFF8E99AF),
                    size: 25,
                  ),
          ),
          IconButton(
            enableFeedback: false,
            onPressed: () {
              setState(() {
                pageIndex = 3;
              });
            },
            icon: pageIndex == 3
                ? const Icon(
                    Icons.person,
                    color: Color(0xFF013A4D),
                    size: 25,
                  )
                : const Icon(
                    Icons.person_outline,
                  color: Color(0xFF8E99AF),
                    size: 25,
                  ),
          ),
        ],
      ),
    );
  }

}