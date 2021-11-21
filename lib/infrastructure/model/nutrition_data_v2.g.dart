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
    foodName: json['food_name'] as String?,
    foodUrl: json['food_url'] as String?,
    servings: json['servings'] == null
        ? null
        : Servings.fromJson(json['servings'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$_$_FoodToJson(_$_Food instance) => <String, dynamic>{
      'food_name': instance.foodName,
      'food_url': instance.foodUrl,
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
    addedSugars: json['added_sugars'] as String?,
    calcium: json['calcium'] as String?,
    calories: json['calories'] as String?,
    carbohydrate: json['carbohydrate'] as String?,
    cholesterol: json['cholesterol'] as String?,
    fat: json['fat'] as String?,
    fiber: json['fiber'] as String?,
    iron: json['iron'] as String?,
    numberOfUnits: json['number_of_units'] as String?,
    polyunsaturatedFat: json['polyunsaturated_fat'] as String?,
    potassium: json['potassium'] as String?,
    protein: json['protein'] as String?,
    saturatedFat: json['saturated_fat'] as String?,
    servingUrl: json['serving_url'] as String?,
    sodium: json['sodium'] as String?,
    sugar: json['sugar'] as String?,
    transFat: json['trans_fat'] as String?,
    vitaminA: json['vitamin_a'] as String?,
    vitaminC: json['vitamin_c'] as String?,
    vitaminD: json['vitamin_d'] as String?,
  );
}

Map<String, dynamic> _$_$_ServingToJson(_$_Serving instance) =>
    <String, dynamic>{
      'added_sugars': instance.addedSugars,
      'calcium': instance.calcium,
      'calories': instance.calories,
      'carbohydrate': instance.carbohydrate,
      'cholesterol': instance.cholesterol,
      'fat': instance.fat,
      'fiber': instance.fiber,
      'iron': instance.iron,
      'number_of_units': instance.numberOfUnits,
      'polyunsaturated_fat': instance.polyunsaturatedFat,
      'potassium': instance.potassium,
      'protein': instance.protein,
      'saturated_fat': instance.saturatedFat,
      'serving_url': instance.servingUrl,
      'sodium': instance.sodium,
      'sugar': instance.sugar,
      'trans_fat': instance.transFat,
      'vitamin_a': instance.vitaminA,
      'vitamin_c': instance.vitaminC,
      'vitamin_d': instance.vitaminD,
    };
