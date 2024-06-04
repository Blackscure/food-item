import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:isar/isar.dart';

part 'food_item.freezed.dart';
part 'food_item.g.dart';

@Collection()
class FoodItem {
  Id id = Isar.autoIncrement; // Automatically increment the ID

  late String name;
  late String imageUrl;

  FoodItem({required this.name, required this.imageUrl});

  // Convert a FoodItem instance to a JSON map
  Map<String, dynamic> toJson() {
    return FoodItemJson(
      id: id.toString(),
      name: name,
      imageUrl: imageUrl,
    ).toJson();
  }
}


@freezed
class FoodItemJson with _$FoodItemJson {
  const factory FoodItemJson({
    required String id,
    required String name,
    required String imageUrl,
  }) = _FoodItemJson;

  factory FoodItemJson.fromJson(Map<String, dynamic> json) => _$FoodItemJsonFromJson(json);
}
