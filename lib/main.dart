import 'package:flutter/material.dart';
import 'package:food/screens/food_list_screen.dart';
import 'package:food/stores/cart_store.dart';
import 'package:food/stores/food_store.dart';
import 'package:hive_flutter/hive_flutter.dart';

import 'package:isar/isar.dart';
import 'package:path_provider/path_provider.dart';
import 'package:provider/provider.dart';

import 'models/food_item.dart';


void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  // Initialize Hive
  await Hive.initFlutter();

  // Initialize Isar
  final dir = await getApplicationDocumentsDirectory();
  final isar = await Isar.open([FoodItemSchema], directory: dir.path);

  runApp(MyApp(isar: isar));
}

class MyApp extends StatelessWidget {
  final Isar isar;

  const MyApp({required this.isar, Key? key}) : super(key: key); // Making the constructor const


  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        Provider<FoodStore>(create: (_) => FoodStore(isar)),
        Provider<CartStore>(create: (_) => CartStore(isar)),
      ],
      child: MaterialApp(
        home: FoodListScreen(),
      ),
    );
  }
}
