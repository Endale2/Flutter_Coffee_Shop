import 'package:coffee_app/components/bottom_nav_bar.dart';
import 'package:coffee_app/pages/cart_page.dart';
import 'package:coffee_app/pages/shop_page.dart';
import 'package:coffee_app/styles.dart';
import 'package:flutter/material.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  int _selectedIndex = 0;

  void navigateBottomNavBar(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  final List<Widget> _pages = [ShopePage(), CartPage()];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: backgroundColor,
        bottomNavigationBar: BottomNavBar(
          onTabChange: (index) => navigateBottomNavBar(index),
        ),
        body: _pages[_selectedIndex]);
  }
}
