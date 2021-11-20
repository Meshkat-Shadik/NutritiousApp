// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'api_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$NutritionDataStateTearOff {
  const _$NutritionDataStateTearOff();

  _WeatherInitial initial() {
    return const _WeatherInitial();
  }

  _WeatherLoading loading() {
    return const _WeatherLoading();
  }

  _WeatherLoadedSuccess success(NutritionData nutritionData) {
    return _WeatherLoadedSuccess(
      nutritionData,
    );
  }

  _WeatherLoadedError error([String? message]) {
    return _WeatherLoadedError(
      message,
    );
  }
}

/// @nodoc
const $NutritionDataState = _$NutritionDataStateTearOff();

/// @nodoc
mixin _$NutritionDataState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(NutritionData nutritionData) success,
    required TResult Function(String? message) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(NutritionData nutritionData)? success,
    TResult Function(String? message)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_WeatherInitial value) initial,
    required TResult Function(_WeatherLoading value) loading,
    required TResult Function(_WeatherLoadedSuccess value) success,
    required TResult Function(_WeatherLoadedError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_WeatherInitial value)? initial,
    TResult Function(_WeatherLoading value)? loading,
    TResult Function(_WeatherLoadedSuccess value)? success,
    TResult Function(_WeatherLoadedError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NutritionDataStateCopyWith<$Res> {
  factory $NutritionDataStateCopyWith(
          NutritionDataState value, $Res Function(NutritionDataState) then) =
      _$NutritionDataStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$NutritionDataStateCopyWithImpl<$Res>
    implements $NutritionDataStateCopyWith<$Res> {
  _$NutritionDataStateCopyWithImpl(this._value, this._then);

  final NutritionDataState _value;
  // ignore: unused_field
  final $Res Function(NutritionDataState) _then;
}

/// @nodoc
abstract class _$WeatherInitialCopyWith<$Res> {
  factory _$WeatherInitialCopyWith(
          _WeatherInitial value, $Res Function(_WeatherInitial) then) =
      __$WeatherInitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$WeatherInitialCopyWithImpl<$Res>
    extends _$NutritionDataStateCopyWithImpl<$Res>
    implements _$WeatherInitialCopyWith<$Res> {
  __$WeatherInitialCopyWithImpl(
      _WeatherInitial _value, $Res Function(_WeatherInitial) _then)
      : super(_value, (v) => _then(v as _WeatherInitial));

  @override
  _WeatherInitial get _value => super._value as _WeatherInitial;
}

/// @nodoc

class _$_WeatherInitial implements _WeatherInitial {
  const _$_WeatherInitial();

  @override
  String toString() {
    return 'NutritionDataState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _WeatherInitial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(NutritionData nutritionData) success,
    required TResult Function(String? message) error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(NutritionData nutritionData)? success,
    TResult Function(String? message)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_WeatherInitial value) initial,
    required TResult Function(_WeatherLoading value) loading,
    required TResult Function(_WeatherLoadedSuccess value) success,
    required TResult Function(_WeatherLoadedError value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_WeatherInitial value)? initial,
    TResult Function(_WeatherLoading value)? loading,
    TResult Function(_WeatherLoadedSuccess value)? success,
    TResult Function(_WeatherLoadedError value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _WeatherInitial implements NutritionDataState {
  const factory _WeatherInitial() = _$_WeatherInitial;
}

/// @nodoc
abstract class _$WeatherLoadingCopyWith<$Res> {
  factory _$WeatherLoadingCopyWith(
          _WeatherLoading value, $Res Function(_WeatherLoading) then) =
      __$WeatherLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$WeatherLoadingCopyWithImpl<$Res>
    extends _$NutritionDataStateCopyWithImpl<$Res>
    implements _$WeatherLoadingCopyWith<$Res> {
  __$WeatherLoadingCopyWithImpl(
      _WeatherLoading _value, $Res Function(_WeatherLoading) _then)
      : super(_value, (v) => _then(v as _WeatherLoading));

  @override
  _WeatherLoading get _value => super._value as _WeatherLoading;
}

/// @nodoc

class _$_WeatherLoading implements _WeatherLoading {
  const _$_WeatherLoading();

  @override
  String toString() {
    return 'NutritionDataState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _WeatherLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(NutritionData nutritionData) success,
    required TResult Function(String? message) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(NutritionData nutritionData)? success,
    TResult Function(String? message)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_WeatherInitial value) initial,
    required TResult Function(_WeatherLoading value) loading,
    required TResult Function(_WeatherLoadedSuccess value) success,
    required TResult Function(_WeatherLoadedError value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_WeatherInitial value)? initial,
    TResult Function(_WeatherLoading value)? loading,
    TResult Function(_WeatherLoadedSuccess value)? success,
    TResult Function(_WeatherLoadedError value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _WeatherLoading implements NutritionDataState {
  const factory _WeatherLoading() = _$_WeatherLoading;
}

/// @nodoc
abstract class _$WeatherLoadedSuccessCopyWith<$Res> {
  factory _$WeatherLoadedSuccessCopyWith(_WeatherLoadedSuccess value,
          $Res Function(_WeatherLoadedSuccess) then) =
      __$WeatherLoadedSuccessCopyWithImpl<$Res>;
  $Res call({NutritionData nutritionData});

  $NutritionDataCopyWith<$Res> get nutritionData;
}

/// @nodoc
class __$WeatherLoadedSuccessCopyWithImpl<$Res>
    extends _$NutritionDataStateCopyWithImpl<$Res>
    implements _$WeatherLoadedSuccessCopyWith<$Res> {
  __$WeatherLoadedSuccessCopyWithImpl(
      _WeatherLoadedSuccess _value, $Res Function(_WeatherLoadedSuccess) _then)
      : super(_value, (v) => _then(v as _WeatherLoadedSuccess));

  @override
  _WeatherLoadedSuccess get _value => super._value as _WeatherLoadedSuccess;

  @override
  $Res call({
    Object? nutritionData = freezed,
  }) {
    return _then(_WeatherLoadedSuccess(
      nutritionData == freezed
          ? _value.nutritionData
          : nutritionData // ignore: cast_nullable_to_non_nullable
              as NutritionData,
    ));
  }

  @override
  $NutritionDataCopyWith<$Res> get nutritionData {
    return $NutritionDataCopyWith<$Res>(_value.nutritionData, (value) {
      return _then(_value.copyWith(nutritionData: value));
    });
  }
}

/// @nodoc

class _$_WeatherLoadedSuccess implements _WeatherLoadedSuccess {
  const _$_WeatherLoadedSuccess(this.nutritionData);

  @override
  final NutritionData nutritionData;

  @override
  String toString() {
    return 'NutritionDataState.success(nutritionData: $nutritionData)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _WeatherLoadedSuccess &&
            (identical(other.nutritionData, nutritionData) ||
                const DeepCollectionEquality()
                    .equals(other.nutritionData, nutritionData)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(nutritionData);

  @JsonKey(ignore: true)
  @override
  _$WeatherLoadedSuccessCopyWith<_WeatherLoadedSuccess> get copyWith =>
      __$WeatherLoadedSuccessCopyWithImpl<_WeatherLoadedSuccess>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(NutritionData nutritionData) success,
    required TResult Function(String? message) error,
  }) {
    return success(nutritionData);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(NutritionData nutritionData)? success,
    TResult Function(String? message)? error,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(nutritionData);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_WeatherInitial value) initial,
    required TResult Function(_WeatherLoading value) loading,
    required TResult Function(_WeatherLoadedSuccess value) success,
    required TResult Function(_WeatherLoadedError value) error,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_WeatherInitial value)? initial,
    TResult Function(_WeatherLoading value)? loading,
    TResult Function(_WeatherLoadedSuccess value)? success,
    TResult Function(_WeatherLoadedError value)? error,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class _WeatherLoadedSuccess implements NutritionDataState {
  const factory _WeatherLoadedSuccess(NutritionData nutritionData) =
      _$_WeatherLoadedSuccess;

  NutritionData get nutritionData => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$WeatherLoadedSuccessCopyWith<_WeatherLoadedSuccess> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$WeatherLoadedErrorCopyWith<$Res> {
  factory _$WeatherLoadedErrorCopyWith(
          _WeatherLoadedError value, $Res Function(_WeatherLoadedError) then) =
      __$WeatherLoadedErrorCopyWithImpl<$Res>;
  $Res call({String? message});
}

/// @nodoc
class __$WeatherLoadedErrorCopyWithImpl<$Res>
    extends _$NutritionDataStateCopyWithImpl<$Res>
    implements _$WeatherLoadedErrorCopyWith<$Res> {
  __$WeatherLoadedErrorCopyWithImpl(
      _WeatherLoadedError _value, $Res Function(_WeatherLoadedError) _then)
      : super(_value, (v) => _then(v as _WeatherLoadedError));

  @override
  _WeatherLoadedError get _value => super._value as _WeatherLoadedError;

  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_WeatherLoadedError(
      message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_WeatherLoadedError implements _WeatherLoadedError {
  const _$_WeatherLoadedError([this.message]);

  @override
  final String? message;

  @override
  String toString() {
    return 'NutritionDataState.error(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _WeatherLoadedError &&
            (identical(other.message, message) ||
                const DeepCollectionEquality().equals(other.message, message)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(message);

  @JsonKey(ignore: true)
  @override
  _$WeatherLoadedErrorCopyWith<_WeatherLoadedError> get copyWith =>
      __$WeatherLoadedErrorCopyWithImpl<_WeatherLoadedError>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(NutritionData nutritionData) success,
    required TResult Function(String? message) error,
  }) {
    return error(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(NutritionData nutritionData)? success,
    TResult Function(String? message)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_WeatherInitial value) initial,
    required TResult Function(_WeatherLoading value) loading,
    required TResult Function(_WeatherLoadedSuccess value) success,
    required TResult Function(_WeatherLoadedError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_WeatherInitial value)? initial,
    TResult Function(_WeatherLoading value)? loading,
    TResult Function(_WeatherLoadedSuccess value)? success,
    TResult Function(_WeatherLoadedError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _WeatherLoadedError implements NutritionDataState {
  const factory _WeatherLoadedError([String? message]) = _$_WeatherLoadedError;

  String? get message => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$WeatherLoadedErrorCopyWith<_WeatherLoadedError> get copyWith =>
      throw _privateConstructorUsedError;
}
