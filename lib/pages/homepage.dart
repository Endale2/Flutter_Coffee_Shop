import 'package:coffee_app/components/bottom_nav_bar.dart';
import 'package:coffee_app/styles.dart';
import 'package:flutter/material.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      bottomNavigationBar: BottomNavBar(),
    );
  }
}
