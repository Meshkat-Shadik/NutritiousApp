import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:nutri_app/infrastructure/model/nutrition_data.dart';

part 'api_state.freezed.dart';

@freezed
abstract class NutritionDataState with _$NutritionDataState {
  const factory NutritionDataState.initial() = _WeatherInitial;
  const factory NutritionDataState.loading() = _WeatherLoading;
  const factory NutritionDataState.success(NutritionData nutritionData) =
      _WeatherLoadedSuccess;
  const factory NutritionDataState.error([String? message]) =
      _WeatherLoadedError;
}
