// Flutter: Existing Libraries
import "package:flutter/material.dart";

// Flutter: External Libraries
import 'package:persistent_bottom_nav_bar/persistent_tab_view.dart';

// Pages
import 'dashboard/dashboard_page.dart';
import './porfolios/porfolios_page.dart';
import './listing/listing_page.dart';

// HomePage: StatelessWidget Class
class HomePage extends StatelessWidget {
  // Constructor
  HomePage({Key? key}) : super(key: key);

  // Final: Class Properties
  final PersistentTabController tabController =
      PersistentTabController(initialIndex: 0);
  final List<Widget> pagesList = [
    DashboardPage(),
    PorfoliosPage(),
    ListingPage(),
  ];
  final List<PersistentBottomNavBarItem> bottomNavBarItemsList = [
    PersistentBottomNavBarItem(
      icon: const Icon(Icons.home),
      title: "Dashboard",
      activeColorPrimary: Colors.blue.shade900,
      inactiveColorPrimary: Colors.blue.shade400,
    ),
    PersistentBottomNavBarItem(
      icon: const Icon(Icons.data_usage),
      title: "Porfolios",
      activeColorPrimary: Colors.blue.shade900,
      inactiveColorPrimary: Colors.blue.shade400,
    ),
    PersistentBottomNavBarItem(
      icon: const Icon(Icons.list),
      title: "Listing",
      activeColorPrimary: Colors.blue.shade900,
      inactiveColorPrimary: Colors.blue.shade400,
    ),
  ];

  // Changable: Class Properties
  int currentIndex = 0;

  // Build: Override Class Method
  @override
  Widget build(BuildContext context) {
    // Returning Widgets
    return PersistentTabView(
      context,
      controller: tabController,
      navBarStyle: NavBarStyle.style6,
      screens: pagesList,
      items: bottomNavBarItemsList,
    );
  }
}
