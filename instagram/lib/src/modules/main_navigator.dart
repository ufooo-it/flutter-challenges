import 'package:flutter/material.dart';
import 'package:instagram/src/news_feed.dart';
import 'package:instagram/src/profile.dart';

import '../../assets/icons/app_icons.dart';

class MainNavigatorScreen extends StatefulWidget {
  const MainNavigatorScreen({Key? key, required this.homeHasChange})
      : super(key: key);

  final ValueChanged<bool> homeHasChange;

  @override
  State<MainNavigatorScreen> createState() => _MainNavigatorScreenState();
}

class _MainNavigatorScreenState extends State<MainNavigatorScreen> {
  var currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: [
        const NewsFeedScreen(),
        const NewsFeedScreen(),
        const NewsFeedScreen(),
        const NewsFeedScreen(),
        const ProfileScreen(),
      ][currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.black,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        currentIndex: currentIndex,
        type: BottomNavigationBarType.fixed,
        onTap: (index) {
          setState(() {
            currentIndex = index;
          });

          widget.homeHasChange(index == 0);
        },
        items: [
          const BottomNavigationBarItem(
            icon: Icon(AppIcons.home),
            activeIcon: Icon(AppIcons.home_fill),
            label: '',
          ),
          const BottomNavigationBarItem(
            icon: Icon(AppIcons.search),
            activeIcon: Icon(AppIcons.search_fill),
            label: '',
          ),
          const BottomNavigationBarItem(
            icon: Icon(AppIcons.find_people),
            activeIcon: Icon(AppIcons.find_people_fill),
            label: '',
          ),
          const BottomNavigationBarItem(
            icon: Icon(AppIcons.heart),
            activeIcon: Icon(AppIcons.heart_fill),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Container(
              decoration: BoxDecoration(
                border: Border.all(color: Colors.transparent),
                shape: BoxShape.circle,
              ),
              child: const CircleAvatar(radius: 10.5),
            ),
            activeIcon: Container(
              decoration: BoxDecoration(
                border: Border.all(
                  width: 1.5,
                  color: Theme.of(context)
                      .bottomNavigationBarTheme
                      .selectedItemColor!,
                ),
                shape: BoxShape.circle,
              ),
              child: const CircleAvatar(radius: 10.5),
            ),
            label: '',
          ),
        ],
      ),
      // bottomNavigationBar: BottomAppBar(
      //   child: Row(
      //     children: [
      //       IconButton(
      //         constraints: const BoxConstraints(
      //           maxHeight: 48,
      //           maxWidth: 48,
      //         ),
      //         onPressed: () {},
      //         icon: const Icon(AppIcons.home),
      //       ),
      //     ],
      //   ),
      // ),
    );
  }
}
