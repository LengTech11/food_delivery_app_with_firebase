import 'package:flutter/material.dart';
import 'package:food_delivery_app_with_firebase/components/my_quantity_selector.dart';
import 'package:food_delivery_app_with_firebase/models/cart_item.dart';
import 'package:food_delivery_app_with_firebase/models/restaurant.dart';
import 'package:provider/provider.dart';

class MyCartTile extends StatelessWidget {
  final CartItem cartItem;

  const MyCartTile({
    super.key,
    required this.cartItem,
  });

  @override
  Widget build(BuildContext context) {
    return Consumer<Restaurant>(
      builder: (context, restaurant, child) => Container(
        child: Column(
          children: [
            Row(
              children: [
                // food image
                ClipRRect(
                  borderRadius: BorderRadius.circular(8),
                  child: Image.asset(
                    cartItem.food.imagePath,
                    height: 100,
                    width: 100,
                  ),
                ),

                const SizedBox(height: 10),

                // name and price
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // food name
                    Text(cartItem.food.name),
                    // food price
                    Text(
                      '\$${cartItem.food.price}',
                    )
                  ],
                ),

                // increase or decrease quantity
                QuantitySelector(
                  food: cartItem.food,
                  quantity: cartItem.quantity,
                  onDecrement: () {
                    restaurant.removeFromCart(cartItem);
                  },
                  onIncrement: () {
                    restaurant.addToCart(
                        cartItem.food, cartItem.selectedAddons);
                  },
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
