import 'package:coffee_app/components/coffee_tile.dart';
import 'package:coffee_app/entities/coffee.dart';
import 'package:coffee_app/entities/coffee_shop.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ShopePage extends StatelessWidget {
  const ShopePage({super.key});

  @override
  Widget build(BuildContext context) {
    void addToCart(Coffee coffee) {
      Provider.of<CoffeeShop>(context, listen: false).addItemToCart(coffee);

      showDialog(
          context: context,
          builder: (context) =>
              AlertDialog(title: Text("Successfully added to cart!")));
    }

    return Consumer<CoffeeShop>(
        builder: (context, value, child) => SafeArea(
                child: Padding(
              padding: const EdgeInsets.all(25.0),
              child: Column(
                children: [
                  Text("How Would You Like Your Coffee?",
                      style: TextStyle(fontSize: 20)),
                  const SizedBox(height: 25),
                  Expanded(
                      child: ListView.builder(
                          itemCount: value.coffeeShop.length,
                          itemBuilder: (context, index) {
                            Coffee coffee = value.coffeeShop[index];
                            return CoffeeTile(
                                coffee: coffee,
                                onPressed: () => addToCart(coffee),
                                icon: Icon(Icons.add));
                          })),
                ],
              ),
            )));
  }
}
