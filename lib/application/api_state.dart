import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:nutri_app/infrastructure/model/nutrition_data.dart';
import 'package:nutri_app/infrastructure/model/nutrition_data_v2.dart';

part 'api_state.freezed.dart';

@freezed
abstract class NutritionDataState with _$NutritionDataState {
  const factory NutritionDataState.initial() = _WeatherInitial;
  const factory NutritionDataState.loading() = _WeatherLoading;
  const factory NutritionDataState.success(NutritionDataV2 nutritionData) =
      _WeatherLoadedSuccess;
  const factory NutritionDataState.error([String? message]) =
      _WeatherLoadedError;
}

@freezed
abstract class NutritionDataStateV1 with _$NutritionDataStateV1 {
  const factory NutritionDataStateV1.initial() = _WeatherInitialV1;
  const factory NutritionDataStateV1.loading() = _WeatherLoadingV1;
  const factory NutritionDataStateV1.success(NutritionData nutritionData) =
      _WeatherLoadedSuccessV1;
  const factory NutritionDataStateV1.error([String? message]) =
      _WeatherLoadedErrorV1;
}
