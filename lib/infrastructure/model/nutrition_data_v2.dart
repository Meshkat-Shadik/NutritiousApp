// To parse this JSON data, do
//
//     final NutritionDataV2 = NutritionDataV2FromJson(jsonString);

import 'package:meta/meta.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'nutrition_data_v2.freezed.dart';
part 'nutrition_data_v2.g.dart';

NutritionDataV2 NutritionDataV2FromJson(String str) =>
    NutritionDataV2.fromJson(json.decode(str));

String NutritionDataV2ToJson(NutritionDataV2 data) =>
    json.encode(data.toJson());

@freezed
abstract class NutritionDataV2 with _$NutritionDataV2 {
  const factory NutritionDataV2({
    @required Food? food,
  }) = _NutritionDataV2;

  factory NutritionDataV2.fromJson(Map<String, dynamic> json) =>
      _$NutritionDataV2FromJson(json);
}

@freezed
abstract class Food with _$Food {
  const factory Food({
    @required String? foodName,
    @required String? foodUrl,
    @required Servings? servings,
  }) = _Food;

  factory Food.fromJson(Map<String, dynamic> json) => _$FoodFromJson(json);
}

@freezed
abstract class Servings with _$Servings {
  const factory Servings({
    @required Serving? serving,
  }) = _Servings;

  factory Servings.fromJson(Map<String, dynamic> json) =>
      _$ServingsFromJson(json);
}

@freezed
abstract class Serving with _$Serving {
  const factory Serving({
    @required String? addedSugars,
    @required String? calcium,
    @required String? calories,
    @required String? carbohydrate,
    @required String? cholesterol,
    @required String? fat,
    @required String? fiber,
    @required String? iron,
    @required String? numberOfUnits,
    @required String? polyunsaturatedFat,
    @required String? potassium,
    @required String? protein,
    @required String? saturatedFat,
    @required String? servingUrl,
    @required String? sodium,
    @required String? sugar,
    @required String? transFat,
    @required String? vitaminA,
    @required String? vitaminC,
    @required String? vitaminD,
  }) = _Serving;

  factory Serving.fromJson(Map<String, dynamic> json) =>
      _$ServingFromJson(json);
}
