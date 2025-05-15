import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:provider/provider.dart';

import '../provider/bottom_nav_provider.dart';
import 'home_screen.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({super.key});

  static const List<Widget> _pages = <Widget>[
    Center(child: HomeScreen()),
    Center(child: Text('Search Page')),
    Center(child: Text('Profile Page')),
    Center(child: Text('Profile Page')),
  ];

  @override
  Widget build(BuildContext context) {
    final navProvider = Provider.of<BottomNavProvider>(context);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        surfaceTintColor: Colors.white,
        shadowColor: Colors.black,
        elevation: 4,
        title: Image.asset(
          'assets/images/Vector.png',
          height: 40,
        ),
        actions: [
          IconButton(
              onPressed: () {},
              icon: SvgPicture.asset('assets/icons/search.svg')),
          IconButton(
              onPressed: () {},
              icon: SvgPicture.asset('assets/icons/Notification.svg')),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 5),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              border: Border.all(width: 1,color: Colors.grey)
            ),
            child: Row(
              children: [
                IconButton(
                    visualDensity:VisualDensity.compact,
                  padding: EdgeInsets.zero,
                    onPressed: () {},
                    icon: SvgPicture.asset('assets/icons/elements.svg')),
                Text("100 ₹")
              ],
            ),

          ),
        ],
      ),
      body: _pages[navProvider.currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        unselectedLabelStyle: TextStyle(color: Colors.grey),
        selectedLabelStyle: TextStyle(color: Colors.black),
        selectedItemColor: Colors.blue,
        // Selected label & icon color
        unselectedItemColor: Colors.grey,
        elevation: 4,
        currentIndex: navProvider.currentIndex,
        onTap: navProvider.setIndex,
        items: [
          BottomNavigationBarItem(
            label: "Home",
            icon: SvgPicture.asset(
              'assets/icons/Home.svg',
              width: 24,
              height: 24,
              colorFilter: const ColorFilter.mode(Colors.grey, BlendMode.srcIn),
            ),
          ),
          BottomNavigationBarItem(
            label: "Course",
            icon: SvgPicture.asset(
              'assets/icons/course(1).svg',
              width: 24,
              height: 24,
              colorFilter: const ColorFilter.mode(Colors.grey, BlendMode.srcIn),
            ),
          ),
          BottomNavigationBarItem(
            label: "Shop",
            icon: SvgPicture.asset(
              'assets/icons/course.svg',
              width: 24,
              height: 24,
              colorFilter: const ColorFilter.mode(Colors.grey, BlendMode.srcIn),
            ),
          ),
          BottomNavigationBarItem(
            label: "Profile",
            icon: SvgPicture.asset(
              'assets/icons/User Profile.svg',
              width: 24,
              height: 24,
              colorFilter: const ColorFilter.mode(Colors.grey, BlendMode.srcIn),
            ),
          ),
        ],
      ),
    );
  }
}
