// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'nutrition_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

NutritionData _$NutritionDataFromJson(Map<String, dynamic> json) {
  return _NutritionData.fromJson(json);
}

/// @nodoc
class _$NutritionDataTearOff {
  const _$NutritionDataTearOff();

  _NutritionData call({List<Item>? items}) {
    return _NutritionData(
      items: items,
    );
  }

  NutritionData fromJson(Map<String, Object> json) {
    return NutritionData.fromJson(json);
  }
}

/// @nodoc
const $NutritionData = _$NutritionDataTearOff();

/// @nodoc
mixin _$NutritionData {
  List<Item>? get items => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $NutritionDataCopyWith<NutritionData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NutritionDataCopyWith<$Res> {
  factory $NutritionDataCopyWith(
          NutritionData value, $Res Function(NutritionData) then) =
      _$NutritionDataCopyWithImpl<$Res>;
  $Res call({List<Item>? items});
}

/// @nodoc
class _$NutritionDataCopyWithImpl<$Res>
    implements $NutritionDataCopyWith<$Res> {
  _$NutritionDataCopyWithImpl(this._value, this._then);

  final NutritionData _value;
  // ignore: unused_field
  final $Res Function(NutritionData) _then;

  @override
  $Res call({
    Object? items = freezed,
  }) {
    return _then(_value.copyWith(
      items: items == freezed
          ? _value.items
          : items // ignore: cast_nullable_to_non_nullable
              as List<Item>?,
    ));
  }
}

/// @nodoc
abstract class _$NutritionDataCopyWith<$Res>
    implements $NutritionDataCopyWith<$Res> {
  factory _$NutritionDataCopyWith(
          _NutritionData value, $Res Function(_NutritionData) then) =
      __$NutritionDataCopyWithImpl<$Res>;
  @override
  $Res call({List<Item>? items});
}

/// @nodoc
class __$NutritionDataCopyWithImpl<$Res>
    extends _$NutritionDataCopyWithImpl<$Res>
    implements _$NutritionDataCopyWith<$Res> {
  __$NutritionDataCopyWithImpl(
      _NutritionData _value, $Res Function(_NutritionData) _then)
      : super(_value, (v) => _then(v as _NutritionData));

  @override
  _NutritionData get _value => super._value as _NutritionData;

  @override
  $Res call({
    Object? items = freezed,
  }) {
    return _then(_NutritionData(
      items: items == freezed
          ? _value.items
          : items // ignore: cast_nullable_to_non_nullable
              as List<Item>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_NutritionData implements _NutritionData {
  const _$_NutritionData({this.items});

  factory _$_NutritionData.fromJson(Map<String, dynamic> json) =>
      _$_$_NutritionDataFromJson(json);

  @override
  final List<Item>? items;

  @override
  String toString() {
    return 'NutritionData(items: $items)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _NutritionData &&
            (identical(other.items, items) ||
                const DeepCollectionEquality().equals(other.items, items)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(items);

  @JsonKey(ignore: true)
  @override
  _$NutritionDataCopyWith<_NutritionData> get copyWith =>
      __$NutritionDataCopyWithImpl<_NutritionData>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_NutritionDataToJson(this);
  }
}

abstract class _NutritionData implements NutritionData {
  const factory _NutritionData({List<Item>? items}) = _$_NutritionData;

  factory _NutritionData.fromJson(Map<String, dynamic> json) =
      _$_NutritionData.fromJson;

  @override
  List<Item>? get items => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$NutritionDataCopyWith<_NutritionData> get copyWith =>
      throw _privateConstructorUsedError;
}

Item _$ItemFromJson(Map<String, dynamic> json) {
  return _Item.fromJson(json);
}

/// @nodoc
class _$ItemTearOff {
  const _$ItemTearOff();

  _Item call(
      {double? sugarG,
      double? fiberG,
      double? servingSizeG,
      double? sodiumMg,
      String? name,
      double? potassiumMg,
      double? fatSaturatedG,
      double? fatTotalG,
      double? calories,
      double? cholesterolMg,
      double? proteinG,
      double? carbohydratesTotalG}) {
    return _Item(
      sugarG: sugarG,
      fiberG: fiberG,
      servingSizeG: servingSizeG,
      sodiumMg: sodiumMg,
      name: name,
      potassiumMg: potassiumMg,
      fatSaturatedG: fatSaturatedG,
      fatTotalG: fatTotalG,
      calories: calories,
      cholesterolMg: cholesterolMg,
      proteinG: proteinG,
      carbohydratesTotalG: carbohydratesTotalG,
    );
  }

  Item fromJson(Map<String, Object> json) {
    return Item.fromJson(json);
  }
}

/// @nodoc
const $Item = _$ItemTearOff();

/// @nodoc
mixin _$Item {
  double? get sugarG => throw _privateConstructorUsedError;
  double? get fiberG => throw _privateConstructorUsedError;
  double? get servingSizeG => throw _privateConstructorUsedError;
  double? get sodiumMg => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  double? get potassiumMg => throw _privateConstructorUsedError;
  double? get fatSaturatedG => throw _privateConstructorUsedError;
  double? get fatTotalG => throw _privateConstructorUsedError;
  double? get calories => throw _privateConstructorUsedError;
  double? get cholesterolMg => throw _privateConstructorUsedError;
  double? get proteinG => throw _privateConstructorUsedError;
  double? get carbohydratesTotalG => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ItemCopyWith<Item> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ItemCopyWith<$Res> {
  factory $ItemCopyWith(Item value, $Res Function(Item) then) =
      _$ItemCopyWithImpl<$Res>;
  $Res call(
      {double? sugarG,
      double? fiberG,
      double? servingSizeG,
      double? sodiumMg,
      String? name,
      double? potassiumMg,
      double? fatSaturatedG,
      double? fatTotalG,
      double? calories,
      double? cholesterolMg,
      double? proteinG,
      double? carbohydratesTotalG});
}

/// @nodoc
class _$ItemCopyWithImpl<$Res> implements $ItemCopyWith<$Res> {
  _$ItemCopyWithImpl(this._value, this._then);

  final Item _value;
  // ignore: unused_field
  final $Res Function(Item) _then;

  @override
  $Res call({
    Object? sugarG = freezed,
    Object? fiberG = freezed,
    Object? servingSizeG = freezed,
    Object? sodiumMg = freezed,
    Object? name = freezed,
    Object? potassiumMg = freezed,
    Object? fatSaturatedG = freezed,
    Object? fatTotalG = freezed,
    Object? calories = freezed,
    Object? cholesterolMg = freezed,
    Object? proteinG = freezed,
    Object? carbohydratesTotalG = freezed,
  }) {
    return _then(_value.copyWith(
      sugarG: sugarG == freezed
          ? _value.sugarG
          : sugarG // ignore: cast_nullable_to_non_nullable
              as double?,
      fiberG: fiberG == freezed
          ? _value.fiberG
          : fiberG // ignore: cast_nullable_to_non_nullable
              as double?,
      servingSizeG: servingSizeG == freezed
          ? _value.servingSizeG
          : servingSizeG // ignore: cast_nullable_to_non_nullable
              as double?,
      sodiumMg: sodiumMg == freezed
          ? _value.sodiumMg
          : sodiumMg // ignore: cast_nullable_to_non_nullable
              as double?,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      potassiumMg: potassiumMg == freezed
          ? _value.potassiumMg
          : potassiumMg // ignore: cast_nullable_to_non_nullable
              as double?,
      fatSaturatedG: fatSaturatedG == freezed
          ? _value.fatSaturatedG
          : fatSaturatedG // ignore: cast_nullable_to_non_nullable
              as double?,
      fatTotalG: fatTotalG == freezed
          ? _value.fatTotalG
          : fatTotalG // ignore: cast_nullable_to_non_nullable
              as double?,
      calories: calories == freezed
          ? _value.calories
          : calories // ignore: cast_nullable_to_non_nullable
              as double?,
      cholesterolMg: cholesterolMg == freezed
          ? _value.cholesterolMg
          : cholesterolMg // ignore: cast_nullable_to_non_nullable
              as double?,
      proteinG: proteinG == freezed
          ? _value.proteinG
          : proteinG // ignore: cast_nullable_to_non_nullable
              as double?,
      carbohydratesTotalG: carbohydratesTotalG == freezed
          ? _value.carbohydratesTotalG
          : carbohydratesTotalG // ignore: cast_nullable_to_non_nullable
              as double?,
    ));
  }
}

/// @nodoc
abstract class _$ItemCopyWith<$Res> implements $ItemCopyWith<$Res> {
  factory _$ItemCopyWith(_Item value, $Res Function(_Item) then) =
      __$ItemCopyWithImpl<$Res>;
  @override
  $Res call(
      {double? sugarG,
      double? fiberG,
      double? servingSizeG,
      double? sodiumMg,
      String? name,
      double? potassiumMg,
      double? fatSaturatedG,
      double? fatTotalG,
      double? calories,
      double? cholesterolMg,
      double? proteinG,
      double? carbohydratesTotalG});
}

/// @nodoc
class __$ItemCopyWithImpl<$Res> extends _$ItemCopyWithImpl<$Res>
    implements _$ItemCopyWith<$Res> {
  __$ItemCopyWithImpl(_Item _value, $Res Function(_Item) _then)
      : super(_value, (v) => _then(v as _Item));

  @override
  _Item get _value => super._value as _Item;

  @override
  $Res call({
    Object? sugarG = freezed,
    Object? fiberG = freezed,
    Object? servingSizeG = freezed,
    Object? sodiumMg = freezed,
    Object? name = freezed,
    Object? potassiumMg = freezed,
    Object? fatSaturatedG = freezed,
    Object? fatTotalG = freezed,
    Object? calories = freezed,
    Object? cholesterolMg = freezed,
    Object? proteinG = freezed,
    Object? carbohydratesTotalG = freezed,
  }) {
    return _then(_Item(
      sugarG: sugarG == freezed
          ? _value.sugarG
          : sugarG // ignore: cast_nullable_to_non_nullable
              as double?,
      fiberG: fiberG == freezed
          ? _value.fiberG
          : fiberG // ignore: cast_nullable_to_non_nullable
              as double?,
      servingSizeG: servingSizeG == freezed
          ? _value.servingSizeG
          : servingSizeG // ignore: cast_nullable_to_non_nullable
              as double?,
      sodiumMg: sodiumMg == freezed
          ? _value.sodiumMg
          : sodiumMg // ignore: cast_nullable_to_non_nullable
              as double?,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      potassiumMg: potassiumMg == freezed
          ? _value.potassiumMg
          : potassiumMg // ignore: cast_nullable_to_non_nullable
              as double?,
      fatSaturatedG: fatSaturatedG == freezed
          ? _value.fatSaturatedG
          : fatSaturatedG // ignore: cast_nullable_to_non_nullable
              as double?,
      fatTotalG: fatTotalG == freezed
          ? _value.fatTotalG
          : fatTotalG // ignore: cast_nullable_to_non_nullable
              as double?,
      calories: calories == freezed
          ? _value.calories
          : calories // ignore: cast_nullable_to_non_nullable
              as double?,
      cholesterolMg: cholesterolMg == freezed
          ? _value.cholesterolMg
          : cholesterolMg // ignore: cast_nullable_to_non_nullable
              as double?,
      proteinG: proteinG == freezed
          ? _value.proteinG
          : proteinG // ignore: cast_nullable_to_non_nullable
              as double?,
      carbohydratesTotalG: carbohydratesTotalG == freezed
          ? _value.carbohydratesTotalG
          : carbohydratesTotalG // ignore: cast_nullable_to_non_nullable
              as double?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Item implements _Item {
  const _$_Item(
      {this.sugarG,
      this.fiberG,
      this.servingSizeG,
      this.sodiumMg,
      this.name,
      this.potassiumMg,
      this.fatSaturatedG,
      this.fatTotalG,
      this.calories,
      this.cholesterolMg,
      this.proteinG,
      this.carbohydratesTotalG});

  factory _$_Item.fromJson(Map<String, dynamic> json) =>
      _$_$_ItemFromJson(json);

  @override
  final double? sugarG;
  @override
  final double? fiberG;
  @override
  final double? servingSizeG;
  @override
  final double? sodiumMg;
  @override
  final String? name;
  @override
  final double? potassiumMg;
  @override
  final double? fatSaturatedG;
  @override
  final double? fatTotalG;
  @override
  final double? calories;
  @override
  final double? cholesterolMg;
  @override
  final double? proteinG;
  @override
  final double? carbohydratesTotalG;

  @override
  String toString() {
    return 'Item(sugarG: $sugarG, fiberG: $fiberG, servingSizeG: $servingSizeG, sodiumMg: $sodiumMg, name: $name, potassiumMg: $potassiumMg, fatSaturatedG: $fatSaturatedG, fatTotalG: $fatTotalG, calories: $calories, cholesterolMg: $cholesterolMg, proteinG: $proteinG, carbohydratesTotalG: $carbohydratesTotalG)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Item &&
            (identical(other.sugarG, sugarG) ||
                const DeepCollectionEquality().equals(other.sugarG, sugarG)) &&
            (identical(other.fiberG, fiberG) ||
                const DeepCollectionEquality().equals(other.fiberG, fiberG)) &&
            (identical(other.servingSizeG, servingSizeG) ||
                const DeepCollectionEquality()
                    .equals(other.servingSizeG, servingSizeG)) &&
            (identical(other.sodiumMg, sodiumMg) ||
                const DeepCollectionEquality()
                    .equals(other.sodiumMg, sodiumMg)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.potassiumMg, potassiumMg) ||
                const DeepCollectionEquality()
                    .equals(other.potassiumMg, potassiumMg)) &&
            (identical(other.fatSaturatedG, fatSaturatedG) ||
                const DeepCollectionEquality()
                    .equals(other.fatSaturatedG, fatSaturatedG)) &&
            (identical(other.fatTotalG, fatTotalG) ||
                const DeepCollectionEquality()
                    .equals(other.fatTotalG, fatTotalG)) &&
            (identical(other.calories, calories) ||
                const DeepCollectionEquality()
                    .equals(other.calories, calories)) &&
            (identical(other.cholesterolMg, cholesterolMg) ||
                const DeepCollectionEquality()
                    .equals(other.cholesterolMg, cholesterolMg)) &&
            (identical(other.proteinG, proteinG) ||
                const DeepCollectionEquality()
                    .equals(other.proteinG, proteinG)) &&
            (identical(other.carbohydratesTotalG, carbohydratesTotalG) ||
                const DeepCollectionEquality()
                    .equals(other.carbohydratesTotalG, carbohydratesTotalG)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(sugarG) ^
      const DeepCollectionEquality().hash(fiberG) ^
      const DeepCollectionEquality().hash(servingSizeG) ^
      const DeepCollectionEquality().hash(sodiumMg) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(potassiumMg) ^
      const DeepCollectionEquality().hash(fatSaturatedG) ^
      const DeepCollectionEquality().hash(fatTotalG) ^
      const DeepCollectionEquality().hash(calories) ^
      const DeepCollectionEquality().hash(cholesterolMg) ^
      const DeepCollectionEquality().hash(proteinG) ^
      const DeepCollectionEquality().hash(carbohydratesTotalG);

  @JsonKey(ignore: true)
  @override
  _$ItemCopyWith<_Item> get copyWith =>
      __$ItemCopyWithImpl<_Item>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_ItemToJson(this);
  }
}

abstract class _Item implements Item {
  const factory _Item(
      {double? sugarG,
      double? fiberG,
      double? servingSizeG,
      double? sodiumMg,
      String? name,
      double? potassiumMg,
      double? fatSaturatedG,
      double? fatTotalG,
      double? calories,
      double? cholesterolMg,
      double? proteinG,
      double? carbohydratesTotalG}) = _$_Item;

  factory _Item.fromJson(Map<String, dynamic> json) = _$_Item.fromJson;

  @override
  double? get sugarG => throw _privateConstructorUsedError;
  @override
  double? get fiberG => throw _privateConstructorUsedError;
  @override
  double? get servingSizeG => throw _privateConstructorUsedError;
  @override
  double? get sodiumMg => throw _privateConstructorUsedError;
  @override
  String? get name => throw _privateConstructorUsedError;
  @override
  double? get potassiumMg => throw _privateConstructorUsedError;
  @override
  double? get fatSaturatedG => throw _privateConstructorUsedError;
  @override
  double? get fatTotalG => throw _privateConstructorUsedError;
  @override
  double? get calories => throw _privateConstructorUsedError;
  @override
  double? get cholesterolMg => throw _privateConstructorUsedError;
  @override
  double? get proteinG => throw _privateConstructorUsedError;
  @override
  double? get carbohydratesTotalG => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$ItemCopyWith<_Item> get copyWith => throw _privateConstructorUsedError;
}
