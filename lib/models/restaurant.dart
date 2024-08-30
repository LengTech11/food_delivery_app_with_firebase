import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:food_delivery_app_with_firebase/models/cart_item.dart';

import 'food.dart';

class Restaurant extends ChangeNotifier {
  // list of food menu
  final List<Food> _menu = [
    // Burgers
    Food(
      name: "Classic Cheeseburger",
      description:
          "A juicy beef patty with melted cheddar, lettuce, tomato, and a hint of onion and pickle.",
      imagePath: "lib/images/burgers/burger_1.png",
      price: 0.99,
      category: FoodCategory.burgers,
      availableAddons: [
        Addon(name: "Extra cheese", price: 0.99),
        Addon(name: "Bacon", price: 1.99),
        Addon(name: "Avocado", price: 2.99),
      ],
    ),
    Food(
      name: "Bacon Burger",
      description:
          "A beef patty topped with crispy bacon, cheddar cheese, lettuce, and tomato.",
      imagePath: "lib/images/burgers/burger_1.png",
      price: 1.99,
      category: FoodCategory.burgers,
      availableAddons: [
        Addon(name: "Extra bacon", price: 1.49),
        Addon(name: "Jalapenos", price: 0.99),
        Addon(name: "Onion rings", price: 1.99),
      ],
    ),
    Food(
      name: "Veggie Burger",
      description:
          "A delicious plant-based patty with lettuce, tomato, onion, and a vegan mayo.",
      imagePath: "lib/images/burgers/burger_1.png",
      price: 2.49,
      category: FoodCategory.burgers,
      availableAddons: [
        Addon(name: "Vegan cheese", price: 0.99),
        Addon(name: "Grilled mushrooms", price: 1.49),
      ],
    ),
    Food(
      name: "BBQ Burger",
      description:
          "Beef patty with BBQ sauce, cheddar cheese, lettuce, and crispy onion straws.",
      imagePath: "lib/images/burgers/burger_1.png",
      price: 2.99,
      category: FoodCategory.burgers,
      availableAddons: [
        Addon(name: "Extra BBQ sauce", price: 0.49),
        Addon(name: "Fried egg", price: 1.49),
        Addon(name: "Pickles", price: 0.79),
      ],
    ),

    // Salads
    Food(
      name: "Caesar Salad",
      description:
          "Crisp romaine lettuce and savory croutons tossed in a tangy Caesar dressing.",
      imagePath: "lib/images/salads/salad_1.jpg",
      price: 5.99,
      category: FoodCategory.salads,
      availableAddons: [
        Addon(name: "Grilled chicken", price: 2.99),
        Addon(name: "Shrimp", price: 3.99),
      ],
    ),
    Food(
      name: "Greek Salad",
      description:
          "A mix of cucumbers, tomatoes, olives, feta cheese, and red onions with a vinaigrette dressing.",
      imagePath: "lib/images/salads/salad_1.jpg",
      price: 6.49,
      category: FoodCategory.salads,
      availableAddons: [
        Addon(name: "Grilled chicken", price: 2.99),
        Addon(name: "Pita bread", price: 1.99),
      ],
    ),
    Food(
      name: "Cobb Salad",
      description:
          "Mixed greens topped with grilled chicken, bacon, hard-boiled egg, avocado, and blue cheese.",
      imagePath: "lib/images/salads/salad_1.jpg",
      price: 7.99,
      category: FoodCategory.salads,
      availableAddons: [
        Addon(name: "Extra avocado", price: 1.49),
        Addon(name: "Ranch dressing", price: 0.99),
      ],
    ),
    Food(
      name: "Spinach Salad",
      description:
          "Fresh spinach leaves with strawberries, almonds, and a balsamic vinaigrette.",
      imagePath: "lib/images/salads/salad_1.jpg",
      price: 5.49,
      category: FoodCategory.salads,
      availableAddons: [
        Addon(name: "Goat cheese", price: 1.49),
        Addon(name: "Grilled chicken", price: 2.99),
      ],
    ),

    // Sides
    Food(
      name: "French Fries",
      description:
          "Crispy golden fries lightly salted and served with ketchup.",
      imagePath: "lib/images/sides/side_1.png",
      price: 2.99,
      category: FoodCategory.sides,
      availableAddons: [
        Addon(name: "Cheese sauce", price: 0.99),
        Addon(name: "Chili", price: 1.49),
      ],
    ),
    Food(
      name: "Onion Rings",
      description:
          "Crispy fried onion rings served with a tangy dipping sauce.",
      imagePath: "lib/images/sides/side_1.png",
      price: 3.49,
      category: FoodCategory.sides,
      availableAddons: [
        Addon(name: "Extra dipping sauce", price: 0.79),
      ],
    ),
    Food(
      name: "Sweet Potato Fries",
      description:
          "Seasoned sweet potato fries served with a honey mustard dip.",
      imagePath: "lib/images/sides/side_1.png",
      price: 3.99,
      category: FoodCategory.sides,
      availableAddons: [
        Addon(name: "Maple syrup", price: 0.99),
        Addon(name: "Ranch dressing", price: 0.99),
      ],
    ),
    Food(
      name: "Mozzarella Sticks",
      description: "Breaded mozzarella sticks served with marinara sauce.",
      imagePath: "lib/images/sides/side_1.png",
      price: 4.49,
      category: FoodCategory.sides,
      availableAddons: [
        Addon(name: "Extra marinara", price: 0.79),
        Addon(name: "Ranch dressing", price: 0.99),
      ],
    ),

    // Desserts
    Food(
      name: "Chocolate Cake",
      description:
          "Rich, moist chocolate cake with a creamy chocolate frosting.",
      imagePath: "lib/images/desserts/dessert_1.jpg",
      price: 4.99,
      category: FoodCategory.desserts,
      availableAddons: [
        Addon(name: "Vanilla ice cream", price: 1.49),
      ],
    ),
    Food(
      name: "Apple Pie",
      description:
          "Classic apple pie with a flaky crust and sweet apple filling.",
      imagePath: "lib/images/desserts/dessert_1.jpg",
      price: 3.99,
      category: FoodCategory.desserts,
      availableAddons: [
        Addon(name: "Whipped cream", price: 0.99),
        Addon(name: "Caramel sauce", price: 0.99),
      ],
    ),
    Food(
      name: "Cheesecake",
      description: "Creamy cheesecake with a graham cracker crust.",
      imagePath: "lib/images/desserts/dessert_1.jpg",
      price: 5.49,
      category: FoodCategory.desserts,
      availableAddons: [
        Addon(name: "Strawberry topping", price: 1.49),
        Addon(name: "Chocolate drizzle", price: 1.49),
      ],
    ),
    Food(
      name: "Ice Cream Sundae",
      description:
          "Vanilla ice cream topped with hot fudge, nuts, and a cherry.",
      imagePath: "lib/images/desserts/dessert_1.jpg",
      price: 3.49,
      category: FoodCategory.desserts,
      availableAddons: [
        Addon(name: "Sprinkles", price: 0.49),
        Addon(name: "Extra hot fudge", price: 0.99),
      ],
    ),

    // Drinks
    Food(
      name: "Iced Tea",
      description: "Refreshing iced tea sweetened with a hint of lemon.",
      imagePath: "lib/images/drinks/drink_1.avif",
      price: 1.99,
      category: FoodCategory.drinks,
      availableAddons: [
        Addon(name: "More ice", price: 0.99),
        Addon(name: "Lemon wedge", price: 0.49),
      ],
    ),
    Food(
      name: "Lemonade",
      description: "Freshly squeezed lemonade, perfectly sweetened.",
      imagePath: "lib/images/drinks/drink_1.avif",
      price: 2.49,
      category: FoodCategory.drinks,
      availableAddons: [
        Addon(name: "Mint leaves", price: 0.49),
        Addon(name: "More ice", price: 0.99),
      ],
    ),
    Food(
      name: "Coffee",
      description: "Hot brewed coffee, strong and flavorful.",
      imagePath: "lib/images/drinks/drink_1.avif",
      price: 1.49,
      category: FoodCategory.drinks,
      availableAddons: [
        Addon(name: "Extra shot", price: 0.99),
        Addon(name: "Vanilla syrup", price: 0.79),
      ],
    ),
    Food(
      name: "Milkshake",
      description:
          "Creamy milkshake available in chocolate, vanilla, or strawberry.",
      imagePath: "lib/images/drinks/drink_1.avif",
      price: 3.99,
      category: FoodCategory.drinks,
      availableAddons: [
        Addon(name: "Whipped cream", price: 0.79),
        Addon(name: "Chocolate chips", price: 0.99),
      ],
    ),
  ];

  /* 

  G E T T E R S

  */

  List<Food> get menu => _menu;
  List<CartItem> get cart => _cart;

  /* 

  O P E R A T I O N S
  
  */

  // user cart
  final List<CartItem> _cart = [];

  // add to cart
  void addToCart(Food food, List<Addon> selectedAddons) {
    //see if in the cart already has the same food selected add
    CartItem? cartItem = _cart.firstWhereOrNull((item) {
      // check if the food are the same
      bool isSameFood = item.food == food;

      // check if the list of selected addons are the same
      bool isSameAddons =
          const ListEquality().equals(item.selectedAddons, selectedAddons);

      return isSameFood && isSameAddons;
    });

    // if item already exist, increase it's quantity
    if (cartItem != null) {
      cartItem.quantity++;
    }
    // otherwise add a new cartItem to the cart
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

  // remove from cart
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

  // get total price of cart
  double getTotalPrice() {
    double total = 0.0;

    for (CartItem cartItem in _cart) {
      double itemTotal = cartItem.food.price;

      for (Addon addon in cartItem.selectedAddons) {
        itemTotal += addon.price;
      }

      total += itemTotal * cartItem.quantity;
    }

    return total;
  }

  // get total number of items in cart
  int getTotalItemCount() {
    int totalItemCount = 0;

    for (CartItem cartItem in _cart) {
      totalItemCount += cartItem.quantity;
    }

    return totalItemCount;
  }

  // clear cart
  void clearCart() {
    _cart.clear();

    notifyListeners();
  }

  /* 

  H E L P E R S

  */

  // generate a receipt

  // format double value into money

  // format list of addons into a string summary
}
