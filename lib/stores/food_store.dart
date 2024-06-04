import 'package:mobx/mobx.dart';
import 'package:isar/isar.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

import '../models/food_item.dart';


part 'food_store.g.dart';

class FoodStore = _FoodStore with _$FoodStore;

abstract class _FoodStore with Store {
  final Isar isar;

  _FoodStore(this.isar);

  @observable
  ObservableList<FoodItem> foodItems = ObservableList<FoodItem>();

  @action
  Future<void> fetchFoodItems() async {
    final foodItemCollection = isar.foodItems;

    if (await foodItemCollection.count() == 0) {
      final response = await http.get(
        Uri.parse('https://api.spoonacular.com/recipes/findByIngredients?ingredients=apples,flour,sugar&number=10'),
        headers: {'Content-Type': 'application/json', 'apiKey': '0e5187e00ee9414eb977884569d9e744'},
      );

      final List<dynamic> data = json.decode(response.body);
      final items = data.map((json) => FoodItem(name: json['name'], imageUrl: json['imageUrl'])).toList();

      await isar.writeTxn(() async {
        await foodItemCollection.putAll(items);
      });

      foodItems.addAll(items);
    } else {
      final items = await foodItemCollection.where().findAll();
      foodItems.addAll(items);
    }
  }
}
