import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:nutri_app/application/api_state.dart';
import 'package:nutri_app/infrastructure/nutrition_repository.dart';

class NutritionStateNotifier extends StateNotifier<NutritionDataState> {
  final NutritionRepository _nutritionRepository;
  NutritionStateNotifier(this._nutritionRepository)
      : super(NutritionDataState.initial());

  Future<void> getNutritionData(String name) async {
    try {
      state = NutritionDataState.loading();
      var data = await _nutritionRepository.getNutritionData(name);
      state = NutritionDataState.success(data);
    } catch (e) {
      state = NutritionDataState.error('$e');
    }
  }
}
