import 'package:flutter/material.dart';
import 'package:food_app/components/my_button.dart';
import 'package:food_app/components/my_cart_tile.dart';
import 'package:food_app/models/restaurant.dart';
import 'package:provider/provider.dart';

import 'payment_page.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<Restaurant>(
      builder: (context, restaurant, child) {
        // cart
        final userCart = restaurant.cart;

        // scaffold UI
        return Scaffold(
          appBar: AppBar(
            title: const Text("Giỏ Hàng"),
            backgroundColor: Colors.transparent,
            foregroundColor: Theme.of(context).colorScheme.inversePrimary,
            actions: [
              //xoa san pham button
              IconButton(
                onPressed: () {
                  showDialog(
                    context: context,
                    builder: (context) => AlertDialog(
                      title: const Text("Bạn muốn xóa hết trong giỏ hàng?"),
                      actions: [
                        //button hủy
                        TextButton(
                          onPressed: () => Navigator.pop(context),
                          child: const Text("Hủy"),
                        ),

                        //button yes
                        TextButton(
                          onPressed: () {
                            Navigator.pop(context);
                            restaurant.clearCart();
                          },
                          child: const Text("Lưu"),
                        ),
                      ],
                    ),
                  );
                },
                icon: const Icon(Icons.delete),
              )
            ],
          ),
          body: Column(
            children: [

              //danh sach trong gio hang
              Expanded(
                child: Column(
                  children: [
                    userCart.isEmpty
                        ? const Expanded(
                      child: Center(
                        child: Text("Giỏ hàng trống.."),
                      ),
                    )
                    :Expanded(
                      child: ListView.builder(
                        itemCount: userCart.length,
                        itemBuilder: (context, index) {
                          // get individual cart item
                          final cartItem = userCart[index];
                
                          // return cart tile UI
                          return MyCartTile(cartItem: cartItem);
                        },
                      ),
                    ),
                  ],
                ),
              ),

              //nút thanh toán
              MyButton(
                onTap: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const PaymentPage(),
                  ),
                ),
                text: "Đi đến thanh toán",
              ),

              const SizedBox(height: 35),
            ],
          ),
        );
      },
    );
  }
}