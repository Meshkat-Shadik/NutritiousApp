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
    sugarG: (json['sugarG'] as num?)?.toDouble(),
    fiberG: (json['fiberG'] as num?)?.toDouble(),
    servingSizeG: (json['servingSizeG'] as num?)?.toDouble(),
    sodiumMg: (json['sodiumMg'] as num?)?.toDouble(),
    name: json['name'] as String?,
    potassiumMg: (json['potassiumMg'] as num?)?.toDouble(),
    fatSaturatedG: (json['fatSaturatedG'] as num?)?.toDouble(),
    fatTotalG: (json['fatTotalG'] as num?)?.toDouble(),
    calories: (json['calories'] as num?)?.toDouble(),
    cholesterolMg: (json['cholesterolMg'] as num?)?.toDouble(),
    proteinG: (json['proteinG'] as num?)?.toDouble(),
    carbohydratesTotalG: (json['carbohydratesTotalG'] as num?)?.toDouble(),
  );
}

Map<String, dynamic> _$_$_ItemToJson(_$_Item instance) => <String, dynamic>{
      'sugarG': instance.sugarG,
      'fiberG': instance.fiberG,
      'servingSizeG': instance.servingSizeG,
      'sodiumMg': instance.sodiumMg,
      'name': instance.name,
      'potassiumMg': instance.potassiumMg,
      'fatSaturatedG': instance.fatSaturatedG,
      'fatTotalG': instance.fatTotalG,
      'calories': instance.calories,
      'cholesterolMg': instance.cholesterolMg,
      'proteinG': instance.proteinG,
      'carbohydratesTotalG': instance.carbohydratesTotalG,
    };
