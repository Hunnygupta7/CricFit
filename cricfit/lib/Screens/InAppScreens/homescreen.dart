import 'package:cricfit/Constants/colors.dart';
import 'package:cricfit/Screens/InAppScreens/MainScreens/mainscreen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'MainScreens/excersise.dart';
import 'MainScreens/notification.dart';
import 'MainScreens/profileScreen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  var _selectedPageIndex;
  late List<Widget> _pages;
  late PageController _pageController;

  @override
  void initState() {
    _selectedPageIndex = 0;
    _pages = [
      const MainScreen(),
      const ExcersiseScreen(),
      const NotificationScreen(),
      const ProfileScreen(),
    ];
    _pageController = PageController(initialPage: _selectedPageIndex);
    super.initState();
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: backgroundColor,
        bottomNavigationBar: Padding(
          padding: const EdgeInsets.only(bottom: 10),
          child: BottomNavigationBar(
              backgroundColor: Colors.white,
              type: BottomNavigationBarType.fixed,
              onTap: (index) {
                setState(() {
                  _selectedPageIndex = index;
                  _pageController.jumpToPage(_selectedPageIndex);
                });
              },
              currentIndex: _selectedPageIndex,
              elevation: 0,
              selectedLabelStyle: const TextStyle(
                  color: textColor, fontWeight: FontWeight.bold),
              unselectedLabelStyle: const TextStyle(
                  color: textColor, fontWeight: FontWeight.bold),
              showSelectedLabels: false,
              showUnselectedLabels: false,
              selectedItemColor: Colors.indigo[600],
              selectedIconTheme: const IconThemeData(color: textColor),
              unselectedIconTheme: IconThemeData(color: Colors.grey[700]),
              items: const [
                BottomNavigationBarItem(
                    label: "Home",
                    icon: Icon(
                      Icons.home,
                    )),
                BottomNavigationBarItem(
                    label: "Search",
                    icon: Icon(
                      Icons.directions_run_rounded,
                    )),
                BottomNavigationBarItem(
                    label: "Notification",
                    icon: Icon(
                      Icons.notifications,
                    )),
                BottomNavigationBarItem(
                    label: "Profile",
                    icon: Icon(
                      Icons.account_circle_rounded,
                    )),
              ]),
        ),
        body: WillPopScope(
          child: PageView(
            controller: _pageController,
            physics: const NeverScrollableScrollPhysics(),
            children: _pages,
          ),
          onWillPop: () {
            SystemNavigator.pop();
            throw "Cannot Back";
          },
        ));
  }
}
