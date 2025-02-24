import 'package:flutter/material.dart';
import 'package:learning_app/pages/account.dart';
import 'package:learning_app/pages/featured.dart';
import 'package:learning_app/pages/learning.dart';
import 'package:learning_app/pages/search.dart';
import 'package:learning_app/pages/wishlist.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int currentIndex = 0;
  List<Widget> pageList = [
    FeaturedPage(),
    SearchPage(),
    MyLearningPage(),
    WishList(),
    const AccountPage()
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        bottomNavigationBar: BottomNavigationBar(
            currentIndex: currentIndex,
            selectedFontSize: 12,
            selectedItemColor: const Color.fromRGBO(58, 199, 46, 100),
            showUnselectedLabels: true,
            unselectedFontSize: 10,
            unselectedItemColor: Colors.black,
            onTap: (value) {
              setState(() {
                currentIndex = value;
              });
            },
            items: const <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.star_border,
                ),
                label: 'Featured',
              ),
              BottomNavigationBarItem(
                  icon: Icon(
                    Icons.search,
                  ),
                  label: 'Search'),
              BottomNavigationBarItem(
                  icon: Icon(
                    Icons.slow_motion_video_sharp,
                  ),
                  label: 'My Learning'),
              BottomNavigationBarItem(
                  icon: Icon(
                    Icons.favorite_border,
                  ),
                  label: 'Wishlist'),
              BottomNavigationBarItem(
                  icon: Icon(
                    Icons.person_outline_rounded,
                  ),
                  label: 'Account'),
            ]),
        body: IndexedStack(
          index: currentIndex,
          children: pageList,
        ));
  }
}
