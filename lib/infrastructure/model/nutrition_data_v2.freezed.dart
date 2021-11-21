// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'nutrition_data_v2.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

NutritionDataV2 _$NutritionDataV2FromJson(Map<String, dynamic> json) {
  return _NutritionDataV2.fromJson(json);
}

/// @nodoc
class _$NutritionDataV2TearOff {
  const _$NutritionDataV2TearOff();

  _NutritionDataV2 call({Food? food}) {
    return _NutritionDataV2(
      food: food,
    );
  }

  NutritionDataV2 fromJson(Map<String, Object> json) {
    return NutritionDataV2.fromJson(json);
  }
}

/// @nodoc
const $NutritionDataV2 = _$NutritionDataV2TearOff();

/// @nodoc
mixin _$NutritionDataV2 {
  Food? get food => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $NutritionDataV2CopyWith<NutritionDataV2> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NutritionDataV2CopyWith<$Res> {
  factory $NutritionDataV2CopyWith(
          NutritionDataV2 value, $Res Function(NutritionDataV2) then) =
      _$NutritionDataV2CopyWithImpl<$Res>;
  $Res call({Food? food});

  $FoodCopyWith<$Res>? get food;
}

/// @nodoc
class _$NutritionDataV2CopyWithImpl<$Res>
    implements $NutritionDataV2CopyWith<$Res> {
  _$NutritionDataV2CopyWithImpl(this._value, this._then);

  final NutritionDataV2 _value;
  // ignore: unused_field
  final $Res Function(NutritionDataV2) _then;

  @override
  $Res call({
    Object? food = freezed,
  }) {
    return _then(_value.copyWith(
      food: food == freezed
          ? _value.food
          : food // ignore: cast_nullable_to_non_nullable
              as Food?,
    ));
  }

  @override
  $FoodCopyWith<$Res>? get food {
    if (_value.food == null) {
      return null;
    }

    return $FoodCopyWith<$Res>(_value.food!, (value) {
      return _then(_value.copyWith(food: value));
    });
  }
}

/// @nodoc
abstract class _$NutritionDataV2CopyWith<$Res>
    implements $NutritionDataV2CopyWith<$Res> {
  factory _$NutritionDataV2CopyWith(
          _NutritionDataV2 value, $Res Function(_NutritionDataV2) then) =
      __$NutritionDataV2CopyWithImpl<$Res>;
  @override
  $Res call({Food? food});

  @override
  $FoodCopyWith<$Res>? get food;
}

/// @nodoc
class __$NutritionDataV2CopyWithImpl<$Res>
    extends _$NutritionDataV2CopyWithImpl<$Res>
    implements _$NutritionDataV2CopyWith<$Res> {
  __$NutritionDataV2CopyWithImpl(
      _NutritionDataV2 _value, $Res Function(_NutritionDataV2) _then)
      : super(_value, (v) => _then(v as _NutritionDataV2));

  @override
  _NutritionDataV2 get _value => super._value as _NutritionDataV2;

  @override
  $Res call({
    Object? food = freezed,
  }) {
    return _then(_NutritionDataV2(
      food: food == freezed
          ? _value.food
          : food // ignore: cast_nullable_to_non_nullable
              as Food?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_NutritionDataV2 implements _NutritionDataV2 {
  const _$_NutritionDataV2({this.food});

  factory _$_NutritionDataV2.fromJson(Map<String, dynamic> json) =>
      _$_$_NutritionDataV2FromJson(json);

  @override
  final Food? food;

  @override
  String toString() {
    return 'NutritionDataV2(food: $food)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _NutritionDataV2 &&
            (identical(other.food, food) ||
                const DeepCollectionEquality().equals(other.food, food)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(food);

  @JsonKey(ignore: true)
  @override
  _$NutritionDataV2CopyWith<_NutritionDataV2> get copyWith =>
      __$NutritionDataV2CopyWithImpl<_NutritionDataV2>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_NutritionDataV2ToJson(this);
  }
}

abstract class _NutritionDataV2 implements NutritionDataV2 {
  const factory _NutritionDataV2({Food? food}) = _$_NutritionDataV2;

  factory _NutritionDataV2.fromJson(Map<String, dynamic> json) =
      _$_NutritionDataV2.fromJson;

  @override
  Food? get food => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$NutritionDataV2CopyWith<_NutritionDataV2> get copyWith =>
      throw _privateConstructorUsedError;
}

Food _$FoodFromJson(Map<String, dynamic> json) {
  return _Food.fromJson(json);
}

/// @nodoc
class _$FoodTearOff {
  const _$FoodTearOff();

  _Food call({String? foodName, String? foodUrl, Servings? servings}) {
    return _Food(
      foodName: foodName,
      foodUrl: foodUrl,
      servings: servings,
    );
  }

  Food fromJson(Map<String, Object> json) {
    return Food.fromJson(json);
  }
}

/// @nodoc
const $Food = _$FoodTearOff();

/// @nodoc
mixin _$Food {
  String? get foodName => throw _privateConstructorUsedError;
  String? get foodUrl => throw _privateConstructorUsedError;
  Servings? get servings => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FoodCopyWith<Food> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FoodCopyWith<$Res> {
  factory $FoodCopyWith(Food value, $Res Function(Food) then) =
      _$FoodCopyWithImpl<$Res>;
  $Res call({String? foodName, String? foodUrl, Servings? servings});

  $ServingsCopyWith<$Res>? get servings;
}

/// @nodoc
class _$FoodCopyWithImpl<$Res> implements $FoodCopyWith<$Res> {
  _$FoodCopyWithImpl(this._value, this._then);

  final Food _value;
  // ignore: unused_field
  final $Res Function(Food) _then;

  @override
  $Res call({
    Object? foodName = freezed,
    Object? foodUrl = freezed,
    Object? servings = freezed,
  }) {
    return _then(_value.copyWith(
      foodName: foodName == freezed
          ? _value.foodName
          : foodName // ignore: cast_nullable_to_non_nullable
              as String?,
      foodUrl: foodUrl == freezed
          ? _value.foodUrl
          : foodUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      servings: servings == freezed
          ? _value.servings
          : servings // ignore: cast_nullable_to_non_nullable
              as Servings?,
    ));
  }

  @override
  $ServingsCopyWith<$Res>? get servings {
    if (_value.servings == null) {
      return null;
    }

    return $ServingsCopyWith<$Res>(_value.servings!, (value) {
      return _then(_value.copyWith(servings: value));
    });
  }
}

/// @nodoc
abstract class _$FoodCopyWith<$Res> implements $FoodCopyWith<$Res> {
  factory _$FoodCopyWith(_Food value, $Res Function(_Food) then) =
      __$FoodCopyWithImpl<$Res>;
  @override
  $Res call({String? foodName, String? foodUrl, Servings? servings});

  @override
  $ServingsCopyWith<$Res>? get servings;
}

/// @nodoc
class __$FoodCopyWithImpl<$Res> extends _$FoodCopyWithImpl<$Res>
    implements _$FoodCopyWith<$Res> {
  __$FoodCopyWithImpl(_Food _value, $Res Function(_Food) _then)
      : super(_value, (v) => _then(v as _Food));

  @override
  _Food get _value => super._value as _Food;

  @override
  $Res call({
    Object? foodName = freezed,
    Object? foodUrl = freezed,
    Object? servings = freezed,
  }) {
    return _then(_Food(
      foodName: foodName == freezed
          ? _value.foodName
          : foodName // ignore: cast_nullable_to_non_nullable
              as String?,
      foodUrl: foodUrl == freezed
          ? _value.foodUrl
          : foodUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      servings: servings == freezed
          ? _value.servings
          : servings // ignore: cast_nullable_to_non_nullable
              as Servings?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Food implements _Food {
  const _$_Food({this.foodName, this.foodUrl, this.servings});

  factory _$_Food.fromJson(Map<String, dynamic> json) =>
      _$_$_FoodFromJson(json);

  @override
  final String? foodName;
  @override
  final String? foodUrl;
  @override
  final Servings? servings;

  @override
  String toString() {
    return 'Food(foodName: $foodName, foodUrl: $foodUrl, servings: $servings)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Food &&
            (identical(other.foodName, foodName) ||
                const DeepCollectionEquality()
                    .equals(other.foodName, foodName)) &&
            (identical(other.foodUrl, foodUrl) ||
                const DeepCollectionEquality()
                    .equals(other.foodUrl, foodUrl)) &&
            (identical(other.servings, servings) ||
                const DeepCollectionEquality()
                    .equals(other.servings, servings)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(foodName) ^
      const DeepCollectionEquality().hash(foodUrl) ^
      const DeepCollectionEquality().hash(servings);

  @JsonKey(ignore: true)
  @override
  _$FoodCopyWith<_Food> get copyWith =>
      __$FoodCopyWithImpl<_Food>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_FoodToJson(this);
  }
}

abstract class _Food implements Food {
  const factory _Food({String? foodName, String? foodUrl, Servings? servings}) =
      _$_Food;

  factory _Food.fromJson(Map<String, dynamic> json) = _$_Food.fromJson;

  @override
  String? get foodName => throw _privateConstructorUsedError;
  @override
  String? get foodUrl => throw _privateConstructorUsedError;
  @override
  Servings? get servings => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$FoodCopyWith<_Food> get copyWith => throw _privateConstructorUsedError;
}

Servings _$ServingsFromJson(Map<String, dynamic> json) {
  return _Servings.fromJson(json);
}

/// @nodoc
class _$ServingsTearOff {
  const _$ServingsTearOff();

  _Servings call({Serving? serving}) {
    return _Servings(
      serving: serving,
    );
  }

  Servings fromJson(Map<String, Object> json) {
    return Servings.fromJson(json);
  }
}

/// @nodoc
const $Servings = _$ServingsTearOff();

/// @nodoc
mixin _$Servings {
  Serving? get serving => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ServingsCopyWith<Servings> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ServingsCopyWith<$Res> {
  factory $ServingsCopyWith(Servings value, $Res Function(Servings) then) =
      _$ServingsCopyWithImpl<$Res>;
  $Res call({Serving? serving});

  $ServingCopyWith<$Res>? get serving;
}

/// @nodoc
class _$ServingsCopyWithImpl<$Res> implements $ServingsCopyWith<$Res> {
  _$ServingsCopyWithImpl(this._value, this._then);

  final Servings _value;
  // ignore: unused_field
  final $Res Function(Servings) _then;

  @override
  $Res call({
    Object? serving = freezed,
  }) {
    return _then(_value.copyWith(
      serving: serving == freezed
          ? _value.serving
          : serving // ignore: cast_nullable_to_non_nullable
              as Serving?,
    ));
  }

  @override
  $ServingCopyWith<$Res>? get serving {
    if (_value.serving == null) {
      return null;
    }

    return $ServingCopyWith<$Res>(_value.serving!, (value) {
      return _then(_value.copyWith(serving: value));
    });
  }
}

/// @nodoc
abstract class _$ServingsCopyWith<$Res> implements $ServingsCopyWith<$Res> {
  factory _$ServingsCopyWith(_Servings value, $Res Function(_Servings) then) =
      __$ServingsCopyWithImpl<$Res>;
  @override
  $Res call({Serving? serving});

  @override
  $ServingCopyWith<$Res>? get serving;
}

/// @nodoc
class __$ServingsCopyWithImpl<$Res> extends _$ServingsCopyWithImpl<$Res>
    implements _$ServingsCopyWith<$Res> {
  __$ServingsCopyWithImpl(_Servings _value, $Res Function(_Servings) _then)
      : super(_value, (v) => _then(v as _Servings));

  @override
  _Servings get _value => super._value as _Servings;

  @override
  $Res call({
    Object? serving = freezed,
  }) {
    return _then(_Servings(
      serving: serving == freezed
          ? _value.serving
          : serving // ignore: cast_nullable_to_non_nullable
              as Serving?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Servings implements _Servings {
  const _$_Servings({this.serving});

  factory _$_Servings.fromJson(Map<String, dynamic> json) =>
      _$_$_ServingsFromJson(json);

  @override
  final Serving? serving;

  @override
  String toString() {
    return 'Servings(serving: $serving)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Servings &&
            (identical(other.serving, serving) ||
                const DeepCollectionEquality().equals(other.serving, serving)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(serving);

  @JsonKey(ignore: true)
  @override
  _$ServingsCopyWith<_Servings> get copyWith =>
      __$ServingsCopyWithImpl<_Servings>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_ServingsToJson(this);
  }
}

abstract class _Servings implements Servings {
  const factory _Servings({Serving? serving}) = _$_Servings;

  factory _Servings.fromJson(Map<String, dynamic> json) = _$_Servings.fromJson;

  @override
  Serving? get serving => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$ServingsCopyWith<_Servings> get copyWith =>
      throw _privateConstructorUsedError;
}

Serving _$ServingFromJson(Map<String, dynamic> json) {
  return _Serving.fromJson(json);
}

/// @nodoc
class _$ServingTearOff {
  const _$ServingTearOff();

  _Serving call(
      {String? addedSugars,
      String? calcium,
      String? calories,
      String? carbohydrate,
      String? cholesterol,
      String? fat,
      String? fiber,
      String? iron,
      String? numberOfUnits,
      String? polyunsaturatedFat,
      String? potassium,
      String? protein,
      String? saturatedFat,
      String? servingUrl,
      String? sodium,
      String? sugar,
      String? transFat,
      String? vitaminA,
      String? vitaminC,
      String? vitaminD}) {
    return _Serving(
      addedSugars: addedSugars,
      calcium: calcium,
      calories: calories,
      carbohydrate: carbohydrate,
      cholesterol: cholesterol,
      fat: fat,
      fiber: fiber,
      iron: iron,
      numberOfUnits: numberOfUnits,
      polyunsaturatedFat: polyunsaturatedFat,
      potassium: potassium,
      protein: protein,
      saturatedFat: saturatedFat,
      servingUrl: servingUrl,
      sodium: sodium,
      sugar: sugar,
      transFat: transFat,
      vitaminA: vitaminA,
      vitaminC: vitaminC,
      vitaminD: vitaminD,
    );
  }

  Serving fromJson(Map<String, Object> json) {
    return Serving.fromJson(json);
  }
}

/// @nodoc
const $Serving = _$ServingTearOff();

/// @nodoc
mixin _$Serving {
  String? get addedSugars => throw _privateConstructorUsedError;
  String? get calcium => throw _privateConstructorUsedError;
  String? get calories => throw _privateConstructorUsedError;
  String? get carbohydrate => throw _privateConstructorUsedError;
  String? get cholesterol => throw _privateConstructorUsedError;
  String? get fat => throw _privateConstructorUsedError;
  String? get fiber => throw _privateConstructorUsedError;
  String? get iron => throw _privateConstructorUsedError;
  String? get numberOfUnits => throw _privateConstructorUsedError;
  String? get polyunsaturatedFat => throw _privateConstructorUsedError;
  String? get potassium => throw _privateConstructorUsedError;
  String? get protein => throw _privateConstructorUsedError;
  String? get saturatedFat => throw _privateConstructorUsedError;
  String? get servingUrl => throw _privateConstructorUsedError;
  String? get sodium => throw _privateConstructorUsedError;
  String? get sugar => throw _privateConstructorUsedError;
  String? get transFat => throw _privateConstructorUsedError;
  String? get vitaminA => throw _privateConstructorUsedError;
  String? get vitaminC => throw _privateConstructorUsedError;
  String? get vitaminD => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ServingCopyWith<Serving> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ServingCopyWith<$Res> {
  factory $ServingCopyWith(Serving value, $Res Function(Serving) then) =
      _$ServingCopyWithImpl<$Res>;
  $Res call(
      {String? addedSugars,
      String? calcium,
      String? calories,
      String? carbohydrate,
      String? cholesterol,
      String? fat,
      String? fiber,
      String? iron,
      String? numberOfUnits,
      String? polyunsaturatedFat,
      String? potassium,
      String? protein,
      String? saturatedFat,
      String? servingUrl,
      String? sodium,
      String? sugar,
      String? transFat,
      String? vitaminA,
      String? vitaminC,
      String? vitaminD});
}

/// @nodoc
class _$ServingCopyWithImpl<$Res> implements $ServingCopyWith<$Res> {
  _$ServingCopyWithImpl(this._value, this._then);

  final Serving _value;
  // ignore: unused_field
  final $Res Function(Serving) _then;

  @override
  $Res call({
    Object? addedSugars = freezed,
    Object? calcium = freezed,
    Object? calories = freezed,
    Object? carbohydrate = freezed,
    Object? cholesterol = freezed,
    Object? fat = freezed,
    Object? fiber = freezed,
    Object? iron = freezed,
    Object? numberOfUnits = freezed,
    Object? polyunsaturatedFat = freezed,
    Object? potassium = freezed,
    Object? protein = freezed,
    Object? saturatedFat = freezed,
    Object? servingUrl = freezed,
    Object? sodium = freezed,
    Object? sugar = freezed,
    Object? transFat = freezed,
    Object? vitaminA = freezed,
    Object? vitaminC = freezed,
    Object? vitaminD = freezed,
  }) {
    return _then(_value.copyWith(
      addedSugars: addedSugars == freezed
          ? _value.addedSugars
          : addedSugars // ignore: cast_nullable_to_non_nullable
              as String?,
      calcium: calcium == freezed
          ? _value.calcium
          : calcium // ignore: cast_nullable_to_non_nullable
              as String?,
      calories: calories == freezed
          ? _value.calories
          : calories // ignore: cast_nullable_to_non_nullable
              as String?,
      carbohydrate: carbohydrate == freezed
          ? _value.carbohydrate
          : carbohydrate // ignore: cast_nullable_to_non_nullable
              as String?,
      cholesterol: cholesterol == freezed
          ? _value.cholesterol
          : cholesterol // ignore: cast_nullable_to_non_nullable
              as String?,
      fat: fat == freezed
          ? _value.fat
          : fat // ignore: cast_nullable_to_non_nullable
              as String?,
      fiber: fiber == freezed
          ? _value.fiber
          : fiber // ignore: cast_nullable_to_non_nullable
              as String?,
      iron: iron == freezed
          ? _value.iron
          : iron // ignore: cast_nullable_to_non_nullable
              as String?,
      numberOfUnits: numberOfUnits == freezed
          ? _value.numberOfUnits
          : numberOfUnits // ignore: cast_nullable_to_non_nullable
              as String?,
      polyunsaturatedFat: polyunsaturatedFat == freezed
          ? _value.polyunsaturatedFat
          : polyunsaturatedFat // ignore: cast_nullable_to_non_nullable
              as String?,
      potassium: potassium == freezed
          ? _value.potassium
          : potassium // ignore: cast_nullable_to_non_nullable
              as String?,
      protein: protein == freezed
          ? _value.protein
          : protein // ignore: cast_nullable_to_non_nullable
              as String?,
      saturatedFat: saturatedFat == freezed
          ? _value.saturatedFat
          : saturatedFat // ignore: cast_nullable_to_non_nullable
              as String?,
      servingUrl: servingUrl == freezed
          ? _value.servingUrl
          : servingUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      sodium: sodium == freezed
          ? _value.sodium
          : sodium // ignore: cast_nullable_to_non_nullable
              as String?,
      sugar: sugar == freezed
          ? _value.sugar
          : sugar // ignore: cast_nullable_to_non_nullable
              as String?,
      transFat: transFat == freezed
          ? _value.transFat
          : transFat // ignore: cast_nullable_to_non_nullable
              as String?,
      vitaminA: vitaminA == freezed
          ? _value.vitaminA
          : vitaminA // ignore: cast_nullable_to_non_nullable
              as String?,
      vitaminC: vitaminC == freezed
          ? _value.vitaminC
          : vitaminC // ignore: cast_nullable_to_non_nullable
              as String?,
      vitaminD: vitaminD == freezed
          ? _value.vitaminD
          : vitaminD // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$ServingCopyWith<$Res> implements $ServingCopyWith<$Res> {
  factory _$ServingCopyWith(_Serving value, $Res Function(_Serving) then) =
      __$ServingCopyWithImpl<$Res>;
  @override
  $Res call(
      {String? addedSugars,
      String? calcium,
      String? calories,
      String? carbohydrate,
      String? cholesterol,
      String? fat,
      String? fiber,
      String? iron,
      String? numberOfUnits,
      String? polyunsaturatedFat,
      String? potassium,
      String? protein,
      String? saturatedFat,
      String? servingUrl,
      String? sodium,
      String? sugar,
      String? transFat,
      String? vitaminA,
      String? vitaminC,
      String? vitaminD});
}

/// @nodoc
class __$ServingCopyWithImpl<$Res> extends _$ServingCopyWithImpl<$Res>
    implements _$ServingCopyWith<$Res> {
  __$ServingCopyWithImpl(_Serving _value, $Res Function(_Serving) _then)
      : super(_value, (v) => _then(v as _Serving));

  @override
  _Serving get _value => super._value as _Serving;

  @override
  $Res call({
    Object? addedSugars = freezed,
    Object? calcium = freezed,
    Object? calories = freezed,
    Object? carbohydrate = freezed,
    Object? cholesterol = freezed,
    Object? fat = freezed,
    Object? fiber = freezed,
    Object? iron = freezed,
    Object? numberOfUnits = freezed,
    Object? polyunsaturatedFat = freezed,
    Object? potassium = freezed,
    Object? protein = freezed,
    Object? saturatedFat = freezed,
    Object? servingUrl = freezed,
    Object? sodium = freezed,
    Object? sugar = freezed,
    Object? transFat = freezed,
    Object? vitaminA = freezed,
    Object? vitaminC = freezed,
    Object? vitaminD = freezed,
  }) {
    return _then(_Serving(
      addedSugars: addedSugars == freezed
          ? _value.addedSugars
          : addedSugars // ignore: cast_nullable_to_non_nullable
              as String?,
      calcium: calcium == freezed
          ? _value.calcium
          : calcium // ignore: cast_nullable_to_non_nullable
              as String?,
      calories: calories == freezed
          ? _value.calories
          : calories // ignore: cast_nullable_to_non_nullable
              as String?,
      carbohydrate: carbohydrate == freezed
          ? _value.carbohydrate
          : carbohydrate // ignore: cast_nullable_to_non_nullable
              as String?,
      cholesterol: cholesterol == freezed
          ? _value.cholesterol
          : cholesterol // ignore: cast_nullable_to_non_nullable
              as String?,
      fat: fat == freezed
          ? _value.fat
          : fat // ignore: cast_nullable_to_non_nullable
              as String?,
      fiber: fiber == freezed
          ? _value.fiber
          : fiber // ignore: cast_nullable_to_non_nullable
              as String?,
      iron: iron == freezed
          ? _value.iron
          : iron // ignore: cast_nullable_to_non_nullable
              as String?,
      numberOfUnits: numberOfUnits == freezed
          ? _value.numberOfUnits
          : numberOfUnits // ignore: cast_nullable_to_non_nullable
              as String?,
      polyunsaturatedFat: polyunsaturatedFat == freezed
          ? _value.polyunsaturatedFat
          : polyunsaturatedFat // ignore: cast_nullable_to_non_nullable
              as String?,
      potassium: potassium == freezed
          ? _value.potassium
          : potassium // ignore: cast_nullable_to_non_nullable
              as String?,
      protein: protein == freezed
          ? _value.protein
          : protein // ignore: cast_nullable_to_non_nullable
              as String?,
      saturatedFat: saturatedFat == freezed
          ? _value.saturatedFat
          : saturatedFat // ignore: cast_nullable_to_non_nullable
              as String?,
      servingUrl: servingUrl == freezed
          ? _value.servingUrl
          : servingUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      sodium: sodium == freezed
          ? _value.sodium
          : sodium // ignore: cast_nullable_to_non_nullable
              as String?,
      sugar: sugar == freezed
          ? _value.sugar
          : sugar // ignore: cast_nullable_to_non_nullable
              as String?,
      transFat: transFat == freezed
          ? _value.transFat
          : transFat // ignore: cast_nullable_to_non_nullable
              as String?,
      vitaminA: vitaminA == freezed
          ? _value.vitaminA
          : vitaminA // ignore: cast_nullable_to_non_nullable
              as String?,
      vitaminC: vitaminC == freezed
          ? _value.vitaminC
          : vitaminC // ignore: cast_nullable_to_non_nullable
              as String?,
      vitaminD: vitaminD == freezed
          ? _value.vitaminD
          : vitaminD // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Serving implements _Serving {
  const _$_Serving(
      {this.addedSugars,
      this.calcium,
      this.calories,
      this.carbohydrate,
      this.cholesterol,
      this.fat,
      this.fiber,
      this.iron,
      this.numberOfUnits,
      this.polyunsaturatedFat,
      this.potassium,
      this.protein,
      this.saturatedFat,
      this.servingUrl,
      this.sodium,
      this.sugar,
      this.transFat,
      this.vitaminA,
      this.vitaminC,
      this.vitaminD});

  factory _$_Serving.fromJson(Map<String, dynamic> json) =>
      _$_$_ServingFromJson(json);

  @override
  final String? addedSugars;
  @override
  final String? calcium;
  @override
  final String? calories;
  @override
  final String? carbohydrate;
  @override
  final String? cholesterol;
  @override
  final String? fat;
  @override
  final String? fiber;
  @override
  final String? iron;
  @override
  final String? numberOfUnits;
  @override
  final String? polyunsaturatedFat;
  @override
  final String? potassium;
  @override
  final String? protein;
  @override
  final String? saturatedFat;
  @override
  final String? servingUrl;
  @override
  final String? sodium;
  @override
  final String? sugar;
  @override
  final String? transFat;
  @override
  final String? vitaminA;
  @override
  final String? vitaminC;
  @override
  final String? vitaminD;

  @override
  String toString() {
    return 'Serving(addedSugars: $addedSugars, calcium: $calcium, calories: $calories, carbohydrate: $carbohydrate, cholesterol: $cholesterol, fat: $fat, fiber: $fiber, iron: $iron, numberOfUnits: $numberOfUnits, polyunsaturatedFat: $polyunsaturatedFat, potassium: $potassium, protein: $protein, saturatedFat: $saturatedFat, servingUrl: $servingUrl, sodium: $sodium, sugar: $sugar, transFat: $transFat, vitaminA: $vitaminA, vitaminC: $vitaminC, vitaminD: $vitaminD)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Serving &&
            (identical(other.addedSugars, addedSugars) ||
                const DeepCollectionEquality()
                    .equals(other.addedSugars, addedSugars)) &&
            (identical(other.calcium, calcium) ||
                const DeepCollectionEquality()
                    .equals(other.calcium, calcium)) &&
            (identical(other.calories, calories) ||
                const DeepCollectionEquality()
                    .equals(other.calories, calories)) &&
            (identical(other.carbohydrate, carbohydrate) ||
                const DeepCollectionEquality()
                    .equals(other.carbohydrate, carbohydrate)) &&
            (identical(other.cholesterol, cholesterol) ||
                const DeepCollectionEquality()
                    .equals(other.cholesterol, cholesterol)) &&
            (identical(other.fat, fat) ||
                const DeepCollectionEquality().equals(other.fat, fat)) &&
            (identical(other.fiber, fiber) ||
                const DeepCollectionEquality().equals(other.fiber, fiber)) &&
            (identical(other.iron, iron) ||
                const DeepCollectionEquality().equals(other.iron, iron)) &&
            (identical(other.numberOfUnits, numberOfUnits) ||
                const DeepCollectionEquality()
                    .equals(other.numberOfUnits, numberOfUnits)) &&
            (identical(other.polyunsaturatedFat, polyunsaturatedFat) ||
                const DeepCollectionEquality()
                    .equals(other.polyunsaturatedFat, polyunsaturatedFat)) &&
            (identical(other.potassium, potassium) ||
                const DeepCollectionEquality()
                    .equals(other.potassium, potassium)) &&
            (identical(other.protein, protein) ||
                const DeepCollectionEquality()
                    .equals(other.protein, protein)) &&
            (identical(other.saturatedFat, saturatedFat) ||
                const DeepCollectionEquality()
                    .equals(other.saturatedFat, saturatedFat)) &&
            (identical(other.servingUrl, servingUrl) ||
                const DeepCollectionEquality()
                    .equals(other.servingUrl, servingUrl)) &&
            (identical(other.sodium, sodium) ||
                const DeepCollectionEquality().equals(other.sodium, sodium)) &&
            (identical(other.sugar, sugar) ||
                const DeepCollectionEquality().equals(other.sugar, sugar)) &&
            (identical(other.transFat, transFat) ||
                const DeepCollectionEquality()
                    .equals(other.transFat, transFat)) &&
            (identical(other.vitaminA, vitaminA) ||
                const DeepCollectionEquality()
                    .equals(other.vitaminA, vitaminA)) &&
            (identical(other.vitaminC, vitaminC) ||
                const DeepCollectionEquality()
                    .equals(other.vitaminC, vitaminC)) &&
            (identical(other.vitaminD, vitaminD) ||
                const DeepCollectionEquality()
                    .equals(other.vitaminD, vitaminD)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(addedSugars) ^
      const DeepCollectionEquality().hash(calcium) ^
      const DeepCollectionEquality().hash(calories) ^
      const DeepCollectionEquality().hash(carbohydrate) ^
      const DeepCollectionEquality().hash(cholesterol) ^
      const DeepCollectionEquality().hash(fat) ^
      const DeepCollectionEquality().hash(fiber) ^
      const DeepCollectionEquality().hash(iron) ^
      const DeepCollectionEquality().hash(numberOfUnits) ^
      const DeepCollectionEquality().hash(polyunsaturatedFat) ^
      const DeepCollectionEquality().hash(potassium) ^
      const DeepCollectionEquality().hash(protein) ^
      const DeepCollectionEquality().hash(saturatedFat) ^
      const DeepCollectionEquality().hash(servingUrl) ^
      const DeepCollectionEquality().hash(sodium) ^
      const DeepCollectionEquality().hash(sugar) ^
      const DeepCollectionEquality().hash(transFat) ^
      const DeepCollectionEquality().hash(vitaminA) ^
      const DeepCollectionEquality().hash(vitaminC) ^
      const DeepCollectionEquality().hash(vitaminD);

  @JsonKey(ignore: true)
  @override
  _$ServingCopyWith<_Serving> get copyWith =>
      __$ServingCopyWithImpl<_Serving>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_ServingToJson(this);
  }
}

abstract class _Serving implements Serving {
  const factory _Serving(
      {String? addedSugars,
      String? calcium,
      String? calories,
      String? carbohydrate,
      String? cholesterol,
      String? fat,
      String? fiber,
      String? iron,
      String? numberOfUnits,
      String? polyunsaturatedFat,
      String? potassium,
      String? protein,
      String? saturatedFat,
      String? servingUrl,
      String? sodium,
      String? sugar,
      String? transFat,
      String? vitaminA,
      String? vitaminC,
      String? vitaminD}) = _$_Serving;

  factory _Serving.fromJson(Map<String, dynamic> json) = _$_Serving.fromJson;

  @override
  String? get addedSugars => throw _privateConstructorUsedError;
  @override
  String? get calcium => throw _privateConstructorUsedError;
  @override
  String? get calories => throw _privateConstructorUsedError;
  @override
  String? get carbohydrate => throw _privateConstructorUsedError;
  @override
  String? get cholesterol => throw _privateConstructorUsedError;
  @override
  String? get fat => throw _privateConstructorUsedError;
  @override
  String? get fiber => throw _privateConstructorUsedError;
  @override
  String? get iron => throw _privateConstructorUsedError;
  @override
  String? get numberOfUnits => throw _privateConstructorUsedError;
  @override
  String? get polyunsaturatedFat => throw _privateConstructorUsedError;
  @override
  String? get potassium => throw _privateConstructorUsedError;
  @override
  String? get protein => throw _privateConstructorUsedError;
  @override
  String? get saturatedFat => throw _privateConstructorUsedError;
  @override
  String? get servingUrl => throw _privateConstructorUsedError;
  @override
  String? get sodium => throw _privateConstructorUsedError;
  @override
  String? get sugar => throw _privateConstructorUsedError;
  @override
  String? get transFat => throw _privateConstructorUsedError;
  @override
  String? get vitaminA => throw _privateConstructorUsedError;
  @override
  String? get vitaminC => throw _privateConstructorUsedError;
  @override
  String? get vitaminD => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$ServingCopyWith<_Serving> get copyWith =>
      throw _privateConstructorUsedError;
}
