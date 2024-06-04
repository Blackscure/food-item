import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:provider/provider.dart';
import '../stores/cart_store.dart';
import '../stores/food_store.dart';


class FoodListScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final foodStore = Provider.of<FoodStore>(context);
    final cartStore = Provider.of<CartStore>(context);

    return Scaffold(
      appBar: AppBar(title: Text('Food Items')),
      body: Observer(
        builder: (_) {
          if (foodStore.foodItems.isEmpty) {
            return Center(child: CircularProgressIndicator());
          }

          return ListView.builder(
            itemCount: foodStore.foodItems.length,
            itemBuilder: (context, index) {
              final item = foodStore.foodItems[index];
              return ListTile(
                title: Text(item.name),
                leading: Image.network(item.imageUrl),
                trailing: IconButton(
                  icon: Icon(Icons.add_shopping_cart),
                  onPressed: () {
                    cartStore.addItemToCart(item);
                  },
                ),
              );
            },
          );
        },
      ),
    );
  }
}
