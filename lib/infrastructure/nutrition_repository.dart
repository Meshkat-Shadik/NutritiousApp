import 'dart:convert';
import 'dart:io';
import 'package:http/http.dart' as http;
import 'package:nutri_app/infrastructure/model/failure.dart';
import 'package:nutri_app/infrastructure/model/nutrition_data.dart';
import 'package:nutri_app/infrastructure/model/nutrition_data_v2.dart';
import 'package:nutri_app/presentation/constants.dart';

abstract class BaseNutritionRepository {
  Future<NutritionDataV2> getNutritionData(String name);
}

class NutritionRepository implements BaseNutritionRepository {
  final http.Client _httpClient;
  NutritionRepository(this._httpClient);
  @override
  Future<NutritionDataV2> getNutritionData(String name) async {
    try {
      final http.Response response =
          await _httpClient.get(Uri.parse(baseUrl + name));
      if (response.statusCode == 200) {
        final parsedData = jsonDecode(response.body);
        print(parsedData.toString());
        final nutritionData = NutritionDataV2.fromJson(parsedData);
        // print('Repo Print ${nutritionData.toString()}');
        return nutritionData;
      } else if (response.statusCode == 404) {
        throw Failure('Not Found any data!');
      } else {
        throw Failure('Check Internet Connection!');
      }
    } on SocketException {
      throw Failure('Check Internet Connection!');
    }
  }
}

abstract class BaseNutritionRepositoryV1 {
  Future<NutritionData> getNutritionData(String name);
}

class NutritionRepositoryV1 implements BaseNutritionRepositoryV1 {
  final http.Client _httpClient;
  NutritionRepositoryV1(this._httpClient);
  @override
  Future<NutritionData> getNutritionData(String name) async {
    try {
      final http.Response response =
          await _httpClient.get(Uri.parse(baseUrlV1 + name));
      if (response.statusCode == 200) {
        final parsedData = jsonDecode(response.body);
        print(parsedData.toString());
        final nutritionData = NutritionData.fromJson(parsedData);
        // print('Repo Print ${nutritionData.toString()}');
        return nutritionData;
      } else if (response.statusCode == 404) {
        throw Failure('Not Found any data!');
      } else {
        throw Failure('Check Internet Connection!');
      }
    } on SocketException {
      throw Failure('Check Internet Connection!');
    }
  }
}
