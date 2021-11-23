import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nutri_app/presentation/constants.dart';
import 'package:auto_route/auto_route.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

class InformationScreen extends ConsumerStatefulWidget {
  const InformationScreen({Key? key}) : super(key: key);

  @override
  _InformationScreenState createState() => _InformationScreenState();
}

class _InformationScreenState extends ConsumerState<InformationScreen> {
  // bool isExpandG = false;

  @override
  Widget build(BuildContext context) {
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
                  "Nutrition",
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
                                percent: 40,
                                deepColor: Colors.teal.shade200,
                                shadeColor: Colors.teal.shade50,
                              ),
                              CircleChart(
                                title: 'Minerals',
                                percent: 10,
                                deepColor: Colors.amber,
                                shadeColor: Colors.amber.shade50,
                              ),
                              CircleChart(
                                title: 'Vitamins',
                                percent: 30,
                                deepColor: Colors.lightGreen,
                                shadeColor: Colors.lightGreen.shade50,
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
                  loopMax: 12,
                ),
                DetailItem(
                  title: 'Minerals',
                  tColor: Colors.amber,
                  loopMax: 8,
                ),
                DetailItem(
                  title: 'Vitamins',
                  tColor: Colors.lightGreen,
                  loopMax: 9,
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
  }) : super(key: key);
  final String title;
  final Color tColor;
  final int loopMax;

  @override
  Widget build(BuildContext context) {
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
              const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
          children: [
            for (int i = 0; i < loopMax; i++)
              Text(
                'General Items',
                style: GoogleFonts.breeSerif(fontSize: 20),
              ),
            // Text(
            //   'General Items',
            //   style: GoogleFonts.breeSerif(fontSize: 20),
            // ),
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
          percent: percent / 100,
          circularStrokeCap: CircularStrokeCap.round,
          center: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                '${percent.toString()}%',
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
          ),
        ),
      ],
    );
  }
}
