// To parse this JSON data, do
//
//     final nutritionData = nutritionDataFromJson(jsonString);

import 'package:meta/meta.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'nutrition_data.freezed.dart';
part 'nutrition_data.g.dart';

NutritionData nutritionDataFromJson(String str) => NutritionData.fromJson(json.decode(str));

String nutritionDataToJson(NutritionData data) => json.encode(data.toJson());

@freezed
abstract class NutritionData with _$NutritionData {
    const factory NutritionData({
        @required List<Item>? items,
    }) = _NutritionData;

    factory NutritionData.fromJson(Map<String, dynamic> json) => _$NutritionDataFromJson(json);
}

@freezed
abstract class Item with _$Item {
    const factory Item({
        @required double? sugarG,
        @required double? fiberG,
        @required double? servingSizeG,
        @required double? sodiumMg,
        @required String? name,
        @required double? potassiumMg,
        @required double? fatSaturatedG,
        @required double? fatTotalG,
        @required double? calories,
        @required double? cholesterolMg,
        @required double? proteinG,
        @required double? carbohydratesTotalG,
    }) = _Item;

    factory Item.fromJson(Map<String, dynamic> json) => _$ItemFromJson(json);
}
