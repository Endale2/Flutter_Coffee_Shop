import 'package:coffee_app/components/coffee_tile.dart';
import 'package:coffee_app/entities/coffee.dart';
import 'package:coffee_app/entities/coffee_shop.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    void removeFromCart(Coffee coffee) {
      Provider.of<CoffeeShop>(context, listen: false)
          .removeItemFromCart(coffee);
    }

    void payNow() {}
    return Consumer<CoffeeShop>(
        builder: (context, value, child) => SafeArea(
                child: Padding(
              padding: const EdgeInsets.all(25.0),
              child: Column(
                children: [
                  Text("Your Cart", style: TextStyle(fontSize: 20)),
                  const SizedBox(height: 25),
                  Expanded(
                      child: ListView.builder(
                          itemCount: value.userCart.length,
                          itemBuilder: (context, index) {
                            Coffee coffee = value.userCart[index];
                            return CoffeeTile(
                                coffee: coffee,
                                onPressed: () => removeFromCart(coffee),
                                icon: Icon(Icons.delete));
                          })),
                  GestureDetector(
                    onTap: payNow,
                    child: Container(
                      padding: EdgeInsets.all(25),
                      width: double.infinity,
                      decoration: BoxDecoration(
                          color: Colors.brown,
                          borderRadius: BorderRadius.circular(12)),
                      child: Center(
                          child: Text("Pay Now",
                              style: TextStyle(color: Colors.white))),
                    ),
                  )
                ],
              ),
            )));
  }
}
