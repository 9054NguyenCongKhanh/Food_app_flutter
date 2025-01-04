import 'package:flutter/material.dart';

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

}