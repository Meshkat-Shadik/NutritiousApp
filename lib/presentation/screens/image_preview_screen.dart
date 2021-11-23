import 'dart:convert';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:image_picker/image_picker.dart';
import 'package:nutri_app/infrastructure/model/nutrition_data.dart';
import 'package:nutri_app/presentation/constants.dart';
import 'package:nutri_app/presentation/routes/router.gr.dart';
import 'package:nutri_app/presentation/widgets/custom_bottom_painter.dart';
import 'package:nutri_app/presentation/widgets/scanner_widget.dart';
import 'package:nutri_app/providers.dart';
import 'package:tflite/tflite.dart';
import 'package:auto_route/auto_route.dart';

class ImagePreviewScreen extends ConsumerStatefulWidget {
  ImagePreviewScreen({
    Key? key,
    required this.pickedImage,
    this.testString,
  }) : super(key: key);

  final File? pickedImage;
  final String? testString;

  @override
  _ImagePreviewScreenState createState() => _ImagePreviewScreenState();
}

class _ImagePreviewScreenState extends ConsumerState<ImagePreviewScreen>
    with SingleTickerProviderStateMixin {
  bool isLoading = false;
  bool isImageLoaded = false;
  bool showMainButton = true;
  List? _result;
  String? _topConfidence = "";
  String _topName = "";
  String? _secondConfidence = "";
  String _secondName = "";
  Map<String, dynamic>? data;

  AnimationController? _animationController;
  bool _animationStopped = false;
  bool scanning = false;

  double? sugar;
  double? fiber;
  double? size;
  double? sodium;
  String? name;
  double? potassium;
  double? fatSaturated;
  double? fatTotal;
  double? calories;
  double? cholesterol;
  double? protein;
  double? carbohydrate;

  @override
  void initState() {
    loadModel();
    checkFruit();
    _animationController = new AnimationController(
        duration: new Duration(seconds: 1), vsync: this);

    _animationController!.addStatusListener((status) {
      if (status == AnimationStatus.completed) {
        animateScanAnimation(true);
      } else if (status == AnimationStatus.dismissed) {
        animateScanAnimation(false);
      }
    });
    super.initState();
  }

  checkFruit() {
    isImageLoaded = true;
    applyModelOnImage(widget.pickedImage!);
  }

  loadModel() async {
    var result = await Tflite.loadModel(
      model: 'assets/model_unquant.tflite',
      labels: 'assets/labels.txt',
    );
    print("Result after loading model: $result");
  }

  applyModelOnImage(File file) async {
    var res = await Tflite.runModelOnImage(
      path: file.path,
      numResults: 3,
      threshold: 0.0000000001,
      imageMean: 127.5,
      imageStd: 127.5,
    );
    setState(() {
      _result = res;
      String str = _result?[0]["label"];
      _topName = str.substring(2);
      _topConfidence = _result != null
          ? (_result?[0]['confidence'] * 100.0).toString().substring(0, 2) + "%"
          : "";
      if (_topName == 'Sweet Potato') {
        _topName = '';
        _topConfidence = '';
      }
      print(_result);
      print(_topName);
      print(_topConfidence);
      String str1 = _result?[1]["label"];
      _secondName = str1.substring(2);
      _secondConfidence = _result != null
          ? (_result?[1]['confidence'] * 100).toString().substring(0, 2) + "%"
          : "";
      if (_secondName == 'Sweet Potato') {
        _secondName = '';
        _secondConfidence = '';
      }
      print(_secondName);
      print(_secondConfidence);
    });
  }

  void animateScanAnimation(bool reverse) {
    if (reverse) {
      _animationController!.reverse(from: 1.0);
    } else {
      _animationController!.forward(from: 0.0);
    }
  }

  @override
  void dispose() {
    _animationController!.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    final nutritionData = ref.watch(nutritionStateNotifierProvider);

    final btnState = ref.watch(buttonStateProvider);
    print(btnState);
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Image'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 10),
            Container(
              child: isImageLoaded
                  ? Stack(
                      children: [
                        Container(
                          height: height / 2,
                          width: width,
                          decoration: BoxDecoration(
                            // borderRadius: BorderRadius.circular(10),
                            image: DecorationImage(
                              image: FileImage(
                                File(
                                  widget.pickedImage!.path,
                                ),
                              ),
                              fit: BoxFit.contain,
                            ),
                          ),
                        ),
                        nutritionData.maybeWhen(
                          orElse: () => Container(),
                          loading: () => ScannerAnimation(
                            _animationStopped,
                            width - 30,
                            animation:
                                _animationController as AnimationController,
                          ),
                        ),
                        // Container(
                        //   height: height / 2,
                        //   width: width,
                        //   decoration: BoxDecoration(
                        //     color: Colors.red,
                        //   ),
                        // ),
                      ],
                    )
                  : Container(
                      height: height / 2,
                      width: width,
                      decoration: BoxDecoration(
                        color: Colors.green[100],
                      ),
                    ),
            ),
            SizedBox(height: 20),
            Container(
              height: 100,
              child: Column(
                children: [
                  PredictedName(
                    topName: _topName,
                    topConfidence: _topConfidence,
                    titleSize: 32,
                    subtitleSize: 22,
                    subtitleColor: Colors.green[700],
                  ),
                  PredictedName(
                    topName: _secondName,
                    topConfidence: _secondConfidence,
                    titleSize: 26,
                    subtitleSize: 16,
                    subtitleColor: Colors.red[700],
                  ),
                ],
              ),
            ),
            Stack(
              children: [
                Container(
                  width: width,
                  decoration: BoxDecoration(
                    color: deepShadeColor,
                  ),
                  height: height - (height / 1.5) - 80,
                  padding: EdgeInsets.all(20),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      nutritionData.maybeWhen(
                        loading: () {
                          if (!scanning) {
                            animateScanAnimation(false);
                            setState(() {
                              _animationStopped = false;
                              scanning = true;
                            });
                          } else {
                            setState(() {
                              _animationController!.forward();
                              _animationStopped = true;
                              scanning = false;
                            });
                          }
                          return Column(
                            children: [
                              Text("Loading..."),
                              SizedBox(height: 10),
                              NeumorphicProgressIndeterminate(
                                style: ProgressStyle(
                                  accent: Colors.green,
                                  variant: Colors.lime,
                                ),
                              ),
                            ],
                          );
                        },
                        orElse: () => Container(),
                      ),
                      SizedBox(height: 0),
                      ElevatedButton(
                        onPressed: () async {
                          ref
                              .watch(nutritionStateNotifierProvider.notifier)
                              .getNutritionData(_topName);
                        },
                        style: ElevatedButton.styleFrom(
                            primary: Colors.green[200],
                            shape: StadiumBorder(),
                            padding: const EdgeInsets.all(15.0)),
                        child: Text(
                          nutritionData.maybeWhen(
                            initial: () => 'Scan Nutrition Data',
                            loading: () => 'Loading',
                            success: (d) {
                              sugar = d.items!.single.sugarG;
                              fiber = d.items!.single.fiberG;
                              size = d.items!.single.servingSizeG;
                              sodium = d.items!.single.sodiumMg;
                              name = d.items!.single.name;
                              fatSaturated = d.items!.single.fatSaturatedG;
                              fatTotal = d.items!.single.fatTotalG;
                              calories = d.items!.single.calories;
                              cholesterol = d.items!.single.cholesterolMg;
                              protein = d.items!.single.proteinG;
                              carbohydrate =
                                  d.items!.single.carbohydratesTotalG;
                              potassium = d.items!.single.potassiumMg;

                              return 'Press View Button To See';
                            },
                            orElse: () => 'Scan Nutrition Data',
                          ),
                          style: GoogleFonts.breeSerif(
                            fontSize: 18,
                            color: Colors.black,
                          ),
                        ),
                      ),
                      nutritionData.maybeWhen(
                        orElse: () => Container(),
                        success: (d) {
                          _animationController!.stop();
                          return ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              primary: Colors.green[200],
                              shape: StadiumBorder(),
                              padding: const EdgeInsets.all(15.0),
                            ),
                            onPressed: () {
                              //ref.read(buttonStateProvider.state).state = false;
                              /*nutritionData.maybeWhen(
                                  orElse: () => Container(),
                                  loading: () => Container(),
                                  success: (d) {
                                    // showDialog(
                                    //     context: context,
                                    //     builder: (BuildContext context) {
                                    //       return AlertDialog(
                                    //         content: SingleChildScrollView(
                                    //           child: Column(
                                    //             children: [
                                    //               Text('Name: $name'),
                                    //               Text(
                                    //                   'Size: ${size!.toString()} g'),
                                    //               Text(
                                    //                   'Calories: ${calories!.toString()} g'),
                                    //               Text(
                                    //                   'Protein: ${protein!.toString()} g'),
                                    //               Text(
                                    //                   'Carbohydrate: ${carbohydrate!.toString()} g'),
                                    //               Text(
                                    //                   'Fiber: ${fiber!.toString()} g'),
                                    //               Text(
                                    //                   'Cholesterol: ${cholesterol!.toString()} mg'),
                                    //               Text(
                                    //                   'Fat Saturated: ${fatSaturated!.toString()} g'),
                                    //               Text(
                                    //                   'Fat Total: ${fatTotal!.toString()} g'),
                                    //               Text(
                                    //                   'Sodium: ${sodium!.toString()} mg'),
                                    //               Text(
                                    //                   'Potassium: ${cholesterol!.toString()} Mg'),
                                    //             ],
                                    //           ),
                                    //         ),
                                    //       );
                                    //     });
                                    /*
                                        title: Text(
                                              nutritionData.maybeMap(
                                                success: (d) => d
                                                    .nutritionData.items!.single
                                                    .toString(),
                                                orElse: () => '',
                                              ),
                                            ),
                                        */
                                  });*/
                              context.router.push(InformationScreenRoute());
                            },
                            child: Text(
                              'View',
                              style: GoogleFonts.breeSerif(
                                color: Colors.black,
                                fontSize: 18,
                              ),
                            ),
                          );
                        },
                      ),
                    ],
                  ),
                ),
                // Container(
                //   child: CustomPaint(
                //     size: Size(width, (width * 0.5).toDouble()),
                //     painter: CustomBottomPainter(),
                //   ),
                // ),
              ],
            )
          ],
        ),
      ),
    );
  }
}

class PredictedName extends StatelessWidget {
  const PredictedName({
    Key? key,
    required String topName,
    required String? topConfidence,
    required this.titleSize,
    required this.subtitleSize,
    required this.subtitleColor,
  })  : _topName = topName,
        _topConfidence = topConfidence,
        super(key: key);

  final String _topName;
  final String? _topConfidence;
  final double? titleSize;
  final double? subtitleSize;
  final Color? subtitleColor;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          '$_topName',
          style: GoogleFonts.breeSerif(
            fontSize: titleSize!,
          ),
        ),
        SizedBox(width: 15),
        Text(
          '$_topConfidence',
          style: GoogleFonts.breeSerif(
            fontSize: subtitleSize!,
            color: subtitleColor,
          ),
        ),
      ],
    );
  }
}
