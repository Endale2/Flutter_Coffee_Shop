import 'package:coffee_app/entities/coffee.dart';

class CoffeeShop {
  final List<Coffee> _shop = [
    Coffee(name: "Black", imagePath: "assets/black.png", price: "20"),
    Coffee(name: "Latte", imagePath: "assets/latte.png", price: "30"),
    Coffee(name: "Espresso", imagePath: "assets/espresso.png", price: "20"),
    Coffee(
        name: "Iced Coffee", imagePath: "assets/iced_coffee.png", price: "20"),
  ];

  final List<Coffee> _userCart = [];

  List<Coffee> get coffeeShop => _shop;

  List<Coffee> get userCart => _userCart;

  void addItemToCart(Coffee coffee) {
    userCart.add(coffee);
  }

  void removeItemFromCart(Coffee coffee) {
    userCart.remove(coffee);
  }
}
