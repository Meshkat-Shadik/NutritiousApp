import 'dart:convert';
import 'dart:io';
import 'package:http/http.dart' as http;
import 'package:nutri_app/infrastructure/model/failure.dart';
import 'package:nutri_app/infrastructure/model/nutrition_data.dart';
import 'package:nutri_app/infrastructure/model/nutrition_data_v2.dart';

abstract class BaseNutritionRepository {
  Future<NutritionData> getNutritionData(String name);
}

class NutritionRepository implements BaseNutritionRepository {
  final http.Client _httpClient;
  NutritionRepository(this._httpClient);
  @override
  Future<NutritionData> getNutritionData(String name) async {
    String baseUrl = 'https://nutrition-app-ssm.herokuapp.com/test/';
    try {
      final http.Response response =
          await _httpClient.get(Uri.parse(baseUrl + name));
      if (response.statusCode == 200) {
        final parsedData = jsonDecode(response.body);
        final nutritionData = NutritionData.fromJson(parsedData);
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
