import 'package:flutter/material.dart';

class ShopePage extends StatelessWidget {
  const ShopePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Padding(
      padding: const EdgeInsets.all(25.0),
      child: Column(
        children: [
          Text("How Would You Like Your Coffee?",
              style: TextStyle(fontSize: 20)),
          const SizedBox(height: 25)
        ],
      ),
    ));
  }
}
