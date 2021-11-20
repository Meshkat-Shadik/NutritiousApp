import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:nutri_app/infrastructure/model/nutrition_data.dart';

class TestApi extends StatefulWidget {
  const TestApi({Key? key}) : super(key: key);

  @override
  _TestApiState createState() => _TestApiState();
}

class _TestApiState extends State<TestApi> {
  Map<String, dynamic>? data;
  NutritionData? nutritionData;

  void _fetchData(String url) async {
    final response = await http.get(Uri.parse(url));
    data = json.decode(response.body);
    print(data);
    setState(() {
      nutritionData = NutritionData.fromJson(data ?? {});
    });
    print(nutritionData);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
                onPressed: () {
                  _fetchData(
                      'https://nutrition-app-ssm.herokuapp.com/test/mango');
                },
                child: Text('see')),
            Text(nutritionData?.items?.toString() ?? 'hello'),
          ],
        ),
      ),
    );
  }
}
