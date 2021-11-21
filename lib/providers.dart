//independent sources
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:nutri_app/application/api_state.dart';
import 'package:nutri_app/application/nutrition_notifier.dart';
import 'package:nutri_app/infrastructure/model/nutrition_data.dart';
import 'package:nutri_app/infrastructure/nutrition_repository.dart';
import 'package:http/http.dart' as http;

final nutritionClientProvider =
    Provider.autoDispose((ref) => NutritionRepository(http.Client()));

//dependent source
final nutritionStateNotifierProvider = StateNotifierProvider.autoDispose<
        NutritionStateNotifier, NutritionDataState>(
    (ref) => (NutritionStateNotifier(ref.watch(nutritionClientProvider))));

final buttonStateProvider = StateProvider<bool>((ref) {
  return true;
});

// final nutritionFutureProvider =
//     FutureProvider.autoDispose.family<NutritionData, String>((ref, name) async {
//   final httpClient = ref.read(nutritionClientProvider);
//   return httpClient.getNutritionData(name);
// });
