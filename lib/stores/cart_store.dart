import 'package:mobx/mobx.dart';
import 'package:isar/isar.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

import '../models/food_item.dart';

part 'cart_store.g.dart';

class CartStore = _CartStore with _$CartStore;

abstract class _CartStore with Store {
  final Isar isar;

  _CartStore(this.isar);

  @observable
  ObservableList<FoodItem> cartItems = ObservableList<FoodItem>();

  @action
  void addItemToCart(FoodItem item) {
    cartItems.add(item);
  }

  @action
  Future<void> checkout() async {
    final response = await http.post(
      Uri.parse('https://dummy.endpoint/checkout'),
      headers: {'Content-Type': 'application/json'},
      body: json.encode(cartItems.map((item) => item.toJson()).toList()),
    );

    if (response.statusCode == 200) {
      cartItems.clear();
      // Show success screen
    }
  }
}
