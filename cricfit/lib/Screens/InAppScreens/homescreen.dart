import 'package:cricfit/Constants/colors.dart';
import 'package:cricfit/Screens/InAppScreens/MainScreens/exploreScreen.dart';
import 'package:cricfit/Screens/InAppScreens/MainScreens/mainscreen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:persistent_bottom_nav_bar_v2/persistent-tab-view.dart';
import 'MainScreens/excersise.dart';
import 'MainScreens/analyticsScreen.dart';
import 'MainScreens/profileScreen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  late PersistentTabController _controller;
  @override
  void initState() {
    _controller = PersistentTabController(initialIndex: 0);
    super.initState();
  }

  List<Widget> _buildScreens() {
    return const [
      MainScreen(),
      ExploreScreen(),
      AnalyticsScreen(),
      ProfileScreen(),
    ];
  }

  List<PersistentBottomNavBarItem> _navBarsItems() {
    return [
      PersistentBottomNavBarItem(
        icon: const Icon(CupertinoIcons.home),
        title: "Home",
        activeColorPrimary: const Color(0xffFE735C),
        inactiveColorPrimary: CupertinoColors.systemGrey,
      ),
      PersistentBottomNavBarItem(
        icon: const Icon(CupertinoIcons.rocket),
        title: "Explore",
        activeColorPrimary: const Color(0xffFE735C),
        inactiveColorPrimary: CupertinoColors.systemGrey,
      ),
      PersistentBottomNavBarItem(
        icon: const Icon(CupertinoIcons.chart_bar_alt_fill),
        title: "Anaytics",
        activeColorPrimary: const Color(0xffFE735C),
        inactiveColorPrimary: CupertinoColors.systemGrey,
      ),
      PersistentBottomNavBarItem(
        icon: const Icon(CupertinoIcons.person),
        title: "Profile",
        activeColorPrimary: const Color(0xffFE735C),
        inactiveColorPrimary: CupertinoColors.systemGrey,
      ),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      // bottomNavigationBar: Padding(
      //   padding: const EdgeInsets.only(bottom: 10),
      //   child: BottomNavigationBar(
      //       backgroundColor: Colors.white,
      //       type: BottomNavigationBarType.fixed,
      //       onTap: (index) {
      //         setState(() {
      //           _selectedPageIndex = index;
      //           _pageController.jumpToPage(_selectedPageIndex);
      //         });
      //       },
      //       currentIndex: _selectedPageIndex,
      //       elevation: 0,
      //       selectedLabelStyle: const TextStyle(
      //           color: textColor, fontWeight: FontWeight.bold),
      //       unselectedLabelStyle: const TextStyle(
      //           color: textColor, fontWeight: FontWeight.bold),
      //       showSelectedLabels: false,
      //       showUnselectedLabels: false,
      //       selectedItemColor: Colors.indigo[600],
      //       selectedIconTheme: const IconThemeData(color: textColor),
      //       unselectedIconTheme: IconThemeData(color: Colors.grey[700]),
      //       items: const [
      //         BottomNavigationBarItem(
      //             label: "Home",
      //             icon: Icon(
      //               Icons.home,
      //             )),
      //         BottomNavigationBarItem(
      //             label: "Search",
      //             icon: Icon(
      //               Icons.directions_run_rounded,
      //             )),
      //         BottomNavigationBarItem(
      //             label: "Notification",
      //             icon: Icon(
      //               Icons.notifications,
      //             )),
      //         BottomNavigationBarItem(
      //             label: "Profile",
      //             icon: Icon(
      //               Icons.account_circle_rounded,
      //             )),
      //       ]),
      // ),
      body: PersistentTabView(
        context,
        controller: _controller,
        screens: _buildScreens(),
        items: _navBarsItems(),
        confineInSafeArea: true,
        backgroundColor: const Color(0xff192126), // Default is Colors.white.
        handleAndroidBackButtonPress: true, // Default is true.
        resizeToAvoidBottomInset:
            true, // This needs to be true if you want to move up the screen when keyboard appears. Default is true.
        stateManagement: true, // Default is true.
        hideNavigationBarWhenKeyboardShows:
            true, // Recommended to set 'resizeToAvoidBottomInset' as true while using this argument. Default is true.
        decoration: const NavBarDecoration(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(30.0),
            topRight: Radius.circular(30.0),
          ),
          colorBehindNavBar: Colors.white,
        ),
        popAllScreensOnTapOfSelectedTab: true,
        popActionScreens: PopActionScreensType.all,
        itemAnimationProperties: const ItemAnimationProperties(
          // Navigation Bar's items animation properties.
          duration: Duration(milliseconds: 200),
          curve: Curves.ease,
        ),
        screenTransitionAnimation: const ScreenTransitionAnimation(
          // Screen transition animation on change of selected tab.
          animateTabTransition: true,
          curve: Curves.ease,
          duration: Duration(milliseconds: 200),
        ),
        navBarStyle:
            NavBarStyle.style1, // Choose the nav bar style with this property.
      ),
    );
  }
}
