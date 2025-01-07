import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:food_app/models/cart_item.dart';
import 'package:intl/intl.dart';

import 'food.dart';
class Restaurant extends ChangeNotifier{
  //list of food menu
  final List<Food> _menu = [
    //burgers
    Food(
      name: "classic cheeseburger",
      description: "a juice beef",
      imagePath: "lib/images/burgers/cheese_burger.png",
      price: 10000,
      category: FoodCategory.bugers,
      availableAddons: [
        Addon(name: "Extra cheese", price: 10000),
        Addon(name: "Extra bacon", price: 10000),
        Addon(name: "Extra edge", price: 000),
      ],
    ),
    Food(
      name: "fish cheeseburger",
      description: "a juice beef",
      imagePath: "lib/images/burgers/aloha_burger.png",
      price: 12000,
      category: FoodCategory.bugers,
      availableAddons: [
        Addon(name: "Extra cheese", price: 10000),
        Addon(name: "Extra bacon", price: 10000),
        Addon(name: "Extra edge", price: 000),
      ],
    ),
    Food(
      name: "chicken cheeseburger",
      description: "a juice beef",
      imagePath: "lib/images/burgers/bluemoon_burger.png",
      price: 15000,
      category: FoodCategory.bugers,
      availableAddons: [
        Addon(name: "Extra cheese", price: 10000),
        Addon(name: "Extra bacon", price: 10000),
        Addon(name: "Extra edge", price: 000),
      ],
    ),
    Food(
      name: "vege cheeseburger",
      description: "a juice beef",
      imagePath: "lib/images/burgers/vege_burger.png",
      price: 15000,
      category: FoodCategory.bugers,
      availableAddons: [
        Addon(name: "Extra cheese", price: 10000),
        Addon(name: "Extra bacon", price: 10000),
        Addon(name: "Extra edge", price: 000),
      ],
    ),
    Food(
      name: "bbq cheeseburger",
      description: "a juice beef",
      imagePath: "lib/images/burgers/bbq_burger.png",
      price: 15000,
      category: FoodCategory.bugers,
      availableAddons: [
        Addon(name: "Extra cheese", price: 10000),
        Addon(name: "Extra bacon", price: 10000),
        Addon(name: "Extra edge", price: 000),
      ],
    ),
    //salads

    Food(
      name: "Greek Salad",
      description:
      "A refreshing salad with tomatoes, cucumbers, olives, feta cheese, and a light vinaigrette.",
      imagePath: "lib/images/salads/greek_salad.png",
      price: 7000,
      category: FoodCategory.salads,
      availableAddons: [
        Addon(name: "Falafel", price: 10000),
      ],
    ),
    Food(
      name: "asian Salad",
      description:
      "A refreshing salad with tomatoes, cucumbers, olives, feta cheese, and a light vinaigrette.",
      imagePath: "lib/images/salads/asiansesame_salad.png",
      price: 10000,
      category: FoodCategory.salads,
      availableAddons: [
        Addon(name: "Falafel", price: 10000),
      ],
    ),
    Food(
      name: "quinoa Salad",
      description:
      "A refreshing salad with tomatoes, cucumbers, olives, feta cheese, and a light vinaigrette.",
      imagePath: "lib/images/salads/quinoa_salad.png",
      price: 9000,
      category: FoodCategory.salads,
      availableAddons: [
        Addon(name: "Falafel", price: 10000),
      ],
    ),
    Food(
      name: "southwest Salad",
      description:
      "A refreshing salad with tomatoes, cucumbers, olives, feta cheese, and a light vinaigrette.",
      imagePath: "lib/images/salads/southwest_salad.png",
      price: 7000,
      category: FoodCategory.salads,
      availableAddons: [
        Addon(name: "Falafel", price: 10000),
      ],
    ),
    //sides
    Food(
      name: "Mac side",
      description: "Crispy golden fries.",
      imagePath: "lib/images/sides/mac_side.png",
      price: 5000,
      category: FoodCategory.sides,
      availableAddons: [
        Addon(name: "Cheese Sauce", price: 8000),
        Addon(name: "Bacon Bits", price: 7000),
      ],
    ),
    Food(
      name: "Onion Rings",
      description: "Crispy and flavorful onion rings.",
      imagePath: "lib/images/sides/onion_rings_side.png",
      price: 6000,
      category: FoodCategory.sides,
      availableAddons: [
        Addon(name: "BBQ Sauce", price: 3000),
      ],
    ),
    Food(
      name: "garlic bread",
      description: "Crispy and flavorful onion rings.",
      imagePath: "lib/images/sides/garlic_bread_side.png",
      price: 6000,
      category: FoodCategory.sides,
      availableAddons: [
        Addon(name: "BBQ Sauce", price: 3000),
      ],
    ),
    Food(
      name: "sweet potato",
      description: "Crispy and flavorful onion rings.",
      imagePath: "lib/images/sides/sweet_potato_side.png",
      price: 6000,
      category: FoodCategory.sides,
      availableAddons: [
        Addon(name: "BBQ Sauce", price: 3000),
      ],
    ),
    Food(
      name: "loadedfries",
      description: "Crispy and flavorful onion rings.",
      imagePath: "lib/images/sides/loadedfries_side.png",
      price: 6000,
      category: FoodCategory.sides,
      availableAddons: [
        Addon(name: "BBQ Sauce", price: 3000),
      ],
    ),
    //desserts
    Food(
      name: "Chocolate Sundae",
      description:
      "Rich chocolate ice cream topped with chocolate syrup, whipped cream, and sprinkles.",
      imagePath: "lib/images/desserts/CAKE1.png",
      price: 12000,
      category: FoodCategory.desserts,
      availableAddons: [
        Addon(name: "Extra Topping", price: 5000),
      ],
    ),
    Food(
      name: "Apple Pie",
      description: "Warm apple pie with a flaky crust and vanilla ice cream.",
      imagePath: "lib/images/desserts/CAKE2.png",
      price: 10000,
      category: FoodCategory.desserts,
      availableAddons: [
        Addon(name: "Whipped Cream", price: 2000),
      ],
    ),
    //drinks
    Food(
      name: "Coca-Cola",
      description: "Refreshing Coca-Cola.",
      imagePath: "lib/images/drinks/cocacola.png",
      price: 3000,
      category: FoodCategory.drinks,
      availableAddons: [],
    ),
    Food(
      name: "Iced Tea",
      description: "Refreshing iced tea.",
      imagePath: "lib/images/drinks/icetea.png",
      price: 2000,
      category: FoodCategory.drinks,
      availableAddons: [],
    ),
  ];

  /*
   //getter
  */
   List<Food> get menu => _menu;
  //gio hang nguoi dung
  final List<CartItem> _cart = [];
  List<CartItem> get cart => _cart;

  //add to cart
  void addToCart(Food food, List<Addon> selectedAddons) {
    //tim neu co san item giong voi item da chon
    CartItem? cartItem = _cart.firstWhereOrNull((item) {
      //kiem tra neu food co san
      bool isSameFood = item.food == food;

      //kiem tra su lua chon co trong list
      bool isSameAddons =
      ListEquality().equals(item.selectedAddons, selectedAddons);

      return isSameFood && isSameAddons;
    });

    //neu mat hang ton tai tang so luong  cua no
    if (cartItem != null) {
      cartItem.quantity++;
    }

    //neu khong co them item voi vao gio hang
    else {
      _cart.add(
        CartItem(
          food: food,
          selectedAddons: selectedAddons,
        ),
      );
    }
    notifyListeners();
  }

  //remove from cart
  void removeFromCart(CartItem cartItem) {
    int cartIndex = _cart.indexOf(cartItem);

    if (cartIndex != -1) {
      if (_cart[cartIndex].quantity > 1) {
        _cart[cartIndex].quantity--;
      } else {
        _cart.removeAt(cartIndex);
      }
    }
    notifyListeners();
  }

  //get total price of cart
  double getTotalPrice() {
    double total = 0.0;

    for (CartItem cartItem in _cart) {
      double itemtotal = cartItem.food.price;

      for (Addon addon in cartItem.selectedAddons) {
        itemtotal += addon.price;
      }

      total += itemtotal * cartItem.quantity;
    }
    return total;
  }

  //get total number of items in cart
  int getTotalItemCoun() {
    int totalItemCount = 0;

    for (CartItem cartItem in _cart) {
      totalItemCount += cartItem.quantity;
    }
    return totalItemCount;
  }

  //clear cart
  void clearCart() {
    _cart.clear();
    notifyListeners();
  }
  //tao ra hoa  don
  String displayCartReceipt(){
    final receipt = StringBuffer();
    receipt.writeln("Hóa đơn của bạn.");
    receipt.writeln();

    //format ngay thanh toan
    String formattedDate = DateFormat('yyyy-MM-dd HH:mm:ss').format(DateTime.now());

    receipt.writeln(formattedDate);
    receipt.writeln();
    receipt.writeln("------------------");

    for (final cartItem in _cart) {
      receipt.writeln(
          "${cartItem.quantity} x ${cartItem.food.name} - ${_formatPrice(cartItem.food.price)}");
      if (cartItem.selectedAddons.isNotEmpty) {
        receipt.writeln("   Them: ${_formatAddons(cartItem.selectedAddons)}");
      }
      receipt.writeln();
    }
    receipt.writeln("-------------");
    receipt.writeln();
    receipt.writeln("Tổng số mặt hàng: ${getTotalItemCoun()}");
    receipt.writeln("Tổng tiền: ${_formatPrice(getTotalPrice())}");

    return receipt.toString();
  }
  //format hoa don
  String _formatPrice(double price) {
    return "\$${price.toStringAsFixed(2)}";
  }

  //format sum do an them
  String _formatAddons(List<Addon> addons) {
    return addons
        .map((addon) => "${addon.name} (${_formatPrice(addon.price)})")
        .join(", ");
  }
}