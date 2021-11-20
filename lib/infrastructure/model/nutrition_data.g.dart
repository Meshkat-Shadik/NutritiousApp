// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'nutrition_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_NutritionData _$_$_NutritionDataFromJson(Map<String, dynamic> json) {
  return _$_NutritionData(
    items: (json['items'] as List<dynamic>?)
        ?.map((e) => Item.fromJson(e as Map<String, dynamic>))
        .toList(),
  );
}

Map<String, dynamic> _$_$_NutritionDataToJson(_$_NutritionData instance) =>
    <String, dynamic>{
      'items': instance.items,
    };

_$_Item _$_$_ItemFromJson(Map<String, dynamic> json) {
  return _$_Item(
    sugarG: (json['sugar_g'] as num?)?.toDouble(),
    fiberG: (json['fiber_g'] as num?)?.toDouble(),
    servingSizeG: (json['serving_size_g'] as num?)?.toDouble(),
    sodiumMg: (json['sodium_mg'] as num?)?.toDouble(),
    name: json['name'] as String?,
    potassiumMg: (json['potassium_mg'] as num?)?.toDouble(),
    fatSaturatedG: (json['fat_saturated_g'] as num?)?.toDouble(),
    fatTotalG: (json['fat_total_g'] as num?)?.toDouble(),
    calories: (json['calories'] as num?)?.toDouble(),
    cholesterolMg: (json['cholesterol_mg'] as num?)?.toDouble(),
    proteinG: (json['protein_g'] as num?)?.toDouble(),
    carbohydratesTotalG: (json['carbohydrates_total_g'] as num?)?.toDouble(),
  );
}

Map<String, dynamic> _$_$_ItemToJson(_$_Item instance) => <String, dynamic>{
      'sugar_g': instance.sugarG,
      'fiber_g': instance.fiberG,
      'serving_size_g': instance.servingSizeG,
      'sodium_mg': instance.sodiumMg,
      'name': instance.name,
      'potassium_mg': instance.potassiumMg,
      'fat_saturated_g': instance.fatSaturatedG,
      'fat_total_g': instance.fatTotalG,
      'calories': instance.calories,
      'cholesterol_mg': instance.cholesterolMg,
      'protein_g': instance.proteinG,
      'carbohydrates_total_g': instance.carbohydratesTotalG,
    };
