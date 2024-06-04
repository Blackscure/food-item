import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:provider/provider.dart';

import '../stores/cart_store.dart';


class CartScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final cartStore = Provider.of<CartStore>(context);

    return Scaffold(
      appBar: AppBar(title: Text('Cart')),
      body: Observer(
        builder: (_) {
          if (cartStore.cartItems.isEmpty) {
            return Center(child: Text('Your cart is empty'));
          }

          return ListView.builder(
            itemCount: cartStore.cartItems.length,
            itemBuilder: (context, index) {
              final item = cartStore.cartItems[index];
              return ListTile(
                title: Text(item.name),
                leading: Image.network(item.imageUrl),
              );
            },
          );
        },
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ElevatedButton(
          onPressed: () async {
            await cartStore.checkout();
            // Show success screen
            ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('Checkout Successful!')));
          },
          child: Text('Checkout'),
        ),
      ),
    );
  }
}
