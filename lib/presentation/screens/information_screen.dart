import 'dart:collection';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nutri_app/infrastructure/model/nutrition_data_v2.dart';
import 'package:nutri_app/presentation/constants.dart';
import 'package:auto_route/auto_route.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

class InformationScreen extends StatelessWidget {
  const InformationScreen({
    Key? key,
    required this.nutritionDataV2,
  }) : super(key: key);
  final NutritionDataV2 nutritionDataV2;
  // bool isExpandG = false;

  double calculatePercent(double? total, double? item) {
    return (total! / item!);
  }

  @override
  Widget build(BuildContext context) {
    // print(nutritionDataV2.toString());
    double height = MediaQuery.of(context).size.height;
    return SafeArea(
      child: Scaffold(
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            context.router.pop();
          },
          mini: true,
          backgroundColor: Colors.grey[400],
          child: Icon(Icons.close),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.miniEndTop,
        backgroundColor: secondaryGreyColor,
        body: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              children: [
                Text(
                  nutritionDataV2.data!.name!.replaceAll(',', '').toUpperCase(),
                  style: GoogleFonts.breeSerif(fontSize: 32),
                ),
                SizedBox(height: 10),
                Card(
                  elevation: 10,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15.0),
                  ),
                  shadowColor: Colors.grey[100],
                  child: Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Container(
                      height: height / 4.2,
                      child: Column(
                        children: [
                          SizedBox(height: 20),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              // Text('Hello'),
                              CircleChart(
                                title: 'General Items',
                                percent: calculatePercent(
                                  nutritionDataV2
                                      .data!.totalNutritionValue!.totGNutrition,
                                  nutritionDataV2.data!.totalNutritionValue!
                                      .totalNutrients,
                                ),
                                deepColor: Colors.teal.shade200,
                                shadeColor: Colors.teal.shade50,
                              ),
                              CircleChart(
                                title: 'Minerals',
                                percent: calculatePercent(
                                  nutritionDataV2
                                      .data!.totalNutritionValue!.totMNutrition,
                                  nutritionDataV2.data!.totalNutritionValue!
                                      .totalNutrients,
                                ),
                                deepColor: Colors.amber,
                                shadeColor: Colors.amber.shade100,
                              ),
                              CircleChart(
                                title: 'Vitamins',
                                percent: calculatePercent(
                                  nutritionDataV2
                                      .data!.totalNutritionValue!.totVNutrition,
                                  nutritionDataV2.data!.totalNutritionValue!
                                      .totalNutrients,
                                ),
                                deepColor: Colors.lightGreen,
                                shadeColor: Colors.lightGreen.shade100,
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                DetailItem(
                  title: 'General Items',
                  tColor: Colors.teal.shade200,
                  loopMax: nutritionDataV2.data!.count!.generalItemsCount,
                  data: nutritionDataV2.data!.generalItems,
                  avatarOn: false,
                ),
                DetailItem(
                  title: 'Minerals',
                  tColor: Colors.amber,
                  loopMax: nutritionDataV2.data!.count!.mineralItemCount,
                  data: nutritionDataV2.data!.mineralItems!,
                  avatarOn: true,
                ),
                DetailItem(
                  title: 'Vitamins',
                  tColor: Colors.lightGreen,
                  loopMax: nutritionDataV2.data!.count!.vitaminItemCount,
                  data: nutritionDataV2.data!.vitaminItems,
                  avatarOn: false,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class DetailItem extends StatelessWidget {
  const DetailItem({
    Key? key,
    required this.title,
    required this.tColor,
    required this.loopMax,
    required this.data,
    required this.avatarOn,
  }) : super(key: key);
  final String title;
  final Color tColor;
  final int? loopMax;
  final List<Item>? data;
  final bool avatarOn;

  @override
  Widget build(BuildContext context) {
    // print(data!.last.unit.toString());
    // for (int i = 0; i < loopMax!; i++) print(Unit.values[i]);
    return Card(
      elevation: 5,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(15),
        child: ExpansionTile(
          textColor: Colors.black,
          title: Container(
            child: Row(
              textBaseline: TextBaseline.ideographic,
              crossAxisAlignment: CrossAxisAlignment.baseline,
              children: [
                CircleAvatar(
                  backgroundColor: tColor,
                  radius: 15,
                ),
                SizedBox(width: 15),
                Text(
                  title,
                  style: GoogleFonts.breeSerif(fontSize: 20),
                )
              ],
            ),
          ),
          expandedAlignment: Alignment.centerLeft,
          collapsedBackgroundColor: Colors.white,
          childrenPadding:
              const EdgeInsets.symmetric(horizontal: 5, vertical: 5),
          children: [
            for (int i = 0; i < loopMax!; i++)
              ListTile(
                leading: avatarOn
                    ? CircleAvatar(
                        backgroundColor: Colors.black87,
                        radius: 18,
                        child: Text(
                          data![i].nutrientName!.toString().split(',').last,
                          style: GoogleFonts.breeSerif(color: Colors.white),
                        ),
                      )
                    : SizedBox(height: 2, width: 2),
                title: Text(
                  data![i].nutrientName!.toString(),
                  style: GoogleFonts.breeSerif(
                    fontSize: 18,
                  ),
                ),
                trailing: Text(
                  '${data![i].nutrientValue!.toString()} ${(Unit.values[data![i].unit!.index]).toString().split('.').last.toLowerCase()}',
                  style: GoogleFonts.breeSerif(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
          ],
        ),
      ),
    );
  }
}

class CircleChart extends StatelessWidget {
  const CircleChart({
    Key? key,
    required this.title,
    required this.percent,
    required this.deepColor,
    required this.shadeColor,
  }) : super(key: key);

  final String title;
  final double percent;
  final Color deepColor;
  final Color shadeColor;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CircularPercentIndicator(
          radius: 100.0,
          lineWidth: 15.0,
          percent: percent,
          circularStrokeCap: CircularStrokeCap.butt,
          center: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                '${(percent * 100).toStringAsFixed(2)}%',
                style: GoogleFonts.breeSerif(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
          progressColor: deepColor,
          backgroundColor: shadeColor,
        ),
        SizedBox(height: 5),
        Text(
          title,
          style: GoogleFonts.breeSerif(
            color: Colors.grey[700],
            fontSize: 16,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    );
  }
}
