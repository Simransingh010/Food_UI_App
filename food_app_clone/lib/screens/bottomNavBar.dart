import 'package:flutter/material.dart';
import 'package:food_app_clone/screens/BookmarkScreen.dart';
import 'package:food_app_clone/screens/DiscoveryScreen.dart';
import 'package:food_app_clone/screens/ProfileScreen.dart';
import 'package:food_app_clone/screens/TopFoodieScreen.dart';
import 'package:food_app_clone/screens/home.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({super.key});

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int _index = 0;
  List pages = [
    HomeScreen(),
    Discovery(),
    Bookmark(),
    TopFoodieScreen(),
    Profile(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages.elementAt(_index),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _index,
        selectedLabelStyle: TextStyle(
          color: Colors.yellow,
        ),
        unselectedLabelStyle: TextStyle(
          color: Colors.transparent,
        ),
        selectedItemColor: Colors.yellow,
        unselectedItemColor: Colors.grey,
        onTap: (index) {
          setState(() {
            _index = index;
            print("Index: $index");
          });
        },
        type: BottomNavigationBarType.fixed,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            activeIcon: Icon(
              Icons.home,
              color: Colors.yellow,
            ),
            icon: Icon(
              Icons.home_outlined,
              color: Colors.grey,
            ),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            activeIcon: Icon(
              Icons.location_on,
              color: Colors.yellow,
            ),
            icon: Icon(
              Icons.location_on_outlined,
              color: Colors.grey,
            ),
            label: 'Discovery',
          ),
          BottomNavigationBarItem(
            activeIcon: Icon(
              Icons.bookmark_border,
              color: Colors.yellow,
            ),
            icon: Icon(
              Icons.bookmark_border_outlined,
              color: Colors.grey,
            ),
            label: 'Bookmark',
          ),
          BottomNavigationBarItem(
            activeIcon: Icon(
              Icons.star_border,
              color: Colors.yellow,
            ),
            icon: Icon(
              Icons.star_border_outlined,
              color: Colors.grey,
            ),
            label: 'Top Foodie',
          ),
          BottomNavigationBarItem(
            activeIcon: Icon(
              Icons.person_3_outlined,
              color: Colors.yellow,
            ),
            icon: Icon(
              Icons.person_3_outlined,
              color: Colors.grey,
            ),
            label: 'Profile',
          ),
        ],
      ),
    );
  }
}
