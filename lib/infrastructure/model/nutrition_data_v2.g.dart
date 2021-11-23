// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'nutrition_data_v2.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_NutritionDataV2 _$_$_NutritionDataV2FromJson(Map<String, dynamic> json) {
  return _$_NutritionDataV2(
    food: json['food'] == null
        ? null
        : Food.fromJson(json['food'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$_$_NutritionDataV2ToJson(_$_NutritionDataV2 instance) =>
    <String, dynamic>{
      'food': instance.food,
    };

_$_Food _$_$_FoodFromJson(Map<String, dynamic> json) {
  return _$_Food(
    foodName: json['foodName'] as String?,
    foodUrl: json['foodUrl'] as String?,
    servings: json['servings'] == null
        ? null
        : Servings.fromJson(json['servings'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$_$_FoodToJson(_$_Food instance) => <String, dynamic>{
      'foodName': instance.foodName,
      'foodUrl': instance.foodUrl,
      'servings': instance.servings,
    };

_$_Servings _$_$_ServingsFromJson(Map<String, dynamic> json) {
  return _$_Servings(
    serving: json['serving'] == null
        ? null
        : Serving.fromJson(json['serving'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$_$_ServingsToJson(_$_Servings instance) =>
    <String, dynamic>{
      'serving': instance.serving,
    };

_$_Serving _$_$_ServingFromJson(Map<String, dynamic> json) {
  return _$_Serving(
    addedSugars: json['addedSugars'] as String?,
    calcium: json['calcium'] as String?,
    calories: json['calories'] as String?,
    carbohydrate: json['carbohydrate'] as String?,
    cholesterol: json['cholesterol'] as String?,
    fat: json['fat'] as String?,
    fiber: json['fiber'] as String?,
    iron: json['iron'] as String?,
    numberOfUnits: json['numberOfUnits'] as String?,
    polyunsaturatedFat: json['polyunsaturatedFat'] as String?,
    potassium: json['potassium'] as String?,
    protein: json['protein'] as String?,
    saturatedFat: json['saturatedFat'] as String?,
    servingUrl: json['servingUrl'] as String?,
    sodium: json['sodium'] as String?,
    sugar: json['sugar'] as String?,
    transFat: json['transFat'] as String?,
    vitaminA: json['vitaminA'] as String?,
    vitaminC: json['vitaminC'] as String?,
    vitaminD: json['vitaminD'] as String?,
  );
}

Map<String, dynamic> _$_$_ServingToJson(_$_Serving instance) =>
    <String, dynamic>{
      'addedSugars': instance.addedSugars,
      'calcium': instance.calcium,
      'calories': instance.calories,
      'carbohydrate': instance.carbohydrate,
      'cholesterol': instance.cholesterol,
      'fat': instance.fat,
      'fiber': instance.fiber,
      'iron': instance.iron,
      'numberOfUnits': instance.numberOfUnits,
      'polyunsaturatedFat': instance.polyunsaturatedFat,
      'potassium': instance.potassium,
      'protein': instance.protein,
      'saturatedFat': instance.saturatedFat,
      'servingUrl': instance.servingUrl,
      'sodium': instance.sodium,
      'sugar': instance.sugar,
      'transFat': instance.transFat,
      'vitaminA': instance.vitaminA,
      'vitaminC': instance.vitaminC,
      'vitaminD': instance.vitaminD,
    };
