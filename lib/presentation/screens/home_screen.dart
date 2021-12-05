import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:auto_route/auto_route.dart';
import 'package:image_picker/image_picker.dart';
import 'package:nutri_app/presentation/constants.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:nutri_app/presentation/routes/router.gr.dart';
import 'package:nutri_app/presentation/screens/image_preview_screen.dart';
import 'package:nutri_app/presentation/screens/test_api.dart';
import 'package:nutri_app/presentation/screens/test_detection.dart';
import 'package:nutri_app/presentation/widgets/custom_bg_painter.dart';
import 'package:nutri_app/providers.dart';

class HomeScreen extends ConsumerStatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends ConsumerState<HomeScreen> {
  late File? pickedImage;
  bool isImageLoaded = false;
  List? _result;
  String? _confidence = "";
  String _name = "";
  String _numbers = "";

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

  final nameController = TextEditingController();

  grabImage(ImageSource source) async {
    var tempStore = await ImagePicker().pickImage(source: source);
    setState(() {
      if (tempStore != null) {
        pickedImage = File(tempStore.path);
        isImageLoaded = true;
        // applyModelOnImage(pickedImage!);
      } else {
        isImageLoaded = false;
        print('Please select an Image to test');
      }
    });
  }

  @override
  void dispose() {
    nameController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    final v1Data = ref.watch(nutritionStateNotifierProviderV1);

    return Scaffold(
      backgroundColor: secondaryGreyColor,
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: Stack(
          children: [
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                children: [
                  Row(
                    children: [
                      Text(
                        "Explore The Nutritions!",
                        style: GoogleFonts.breeSerif(
                          fontSize: 32,
                          color: Colors.green[900],
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 30),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: secondaryGreyColor,
                      boxShadow: homeBoxShadowColor,
                    ),
                    padding: const EdgeInsets.only(
                      left: 20,
                      right: 2,
                    ),
                    child: TextFormField(
                      decoration: InputDecoration(
                        labelText: 'Search By any food name',
                        labelStyle: GoogleFonts.breeSerif(
                          fontSize: 16,
                          color: Colors.green[900],
                        ),
                        border: InputBorder.none,
                        suffixIcon: IconButton(
                          onPressed: () async {
                            await ref
                                .watch(
                                    nutritionStateNotifierProviderV1.notifier)
                                .getNutritionData(nameController.text.trim());
                            v1Data.maybeWhen(
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

                                return showDialog(
                                    context: context,
                                    builder: (BuildContext context) {
                                      return AlertDialog(
                                        content: SingleChildScrollView(
                                          child: Column(
                                            children: [
                                              Text(
                                                'Name: $name',
                                                style: GoogleFonts.breeSerif(
                                                    fontSize: 20),
                                              ),
                                              Container(
                                                height: 1,
                                                color: Colors.grey,
                                              ),
                                              Text(
                                                'Serving Size: ${size!.toString()} g',
                                                style: GoogleFonts.breeSerif(
                                                    fontSize: 18),
                                              ),
                                              Text(
                                                'Calories: ${calories!.toString()} g',
                                                style: GoogleFonts.breeSerif(
                                                    fontSize: 18),
                                              ),
                                              Text(
                                                'Protein: ${protein!.toString()} g',
                                                style: GoogleFonts.breeSerif(
                                                    fontSize: 18),
                                              ),
                                              Text(
                                                'Carbohydrate: ${carbohydrate!.toString()} g',
                                                style: GoogleFonts.breeSerif(
                                                    fontSize: 18),
                                              ),
                                              Text(
                                                'Fiber: ${fiber!.toString()} g',
                                                style: GoogleFonts.breeSerif(
                                                    fontSize: 18),
                                              ),
                                              Text(
                                                'Cholesterol: ${cholesterol!.toString()} mg',
                                                style: GoogleFonts.breeSerif(
                                                    fontSize: 18),
                                              ),
                                              Text(
                                                'Fat Saturated: ${fatSaturated!.toString()} g',
                                                style: GoogleFonts.breeSerif(
                                                    fontSize: 18),
                                              ),
                                              Text(
                                                'Fat Total: ${fatTotal!.toString()} g',
                                                style: GoogleFonts.breeSerif(
                                                    fontSize: 18),
                                              ),
                                              Text(
                                                'Sodium: ${sodium!.toString()} mg',
                                                style: GoogleFonts.breeSerif(
                                                    fontSize: 18),
                                              ),
                                              Text(
                                                'Potassium: ${cholesterol!.toString()} Mg',
                                                style: GoogleFonts.breeSerif(
                                                    fontSize: 18),
                                              ),
                                            ],
                                          ),
                                        ),
                                      );
                                    });
                              },
                              loading: () => CircularProgressIndicator(),
                              orElse: () {
                                print('OrElse');
                              },
                            );
                          },
                          splashColor: Colors.transparent,
                          icon: Icon(Icons.search),
                          iconSize: 32,
                        ),
                      ),
                      autocorrect: false,
                      controller: nameController,
                    ),
                  ),
                  SizedBox(height: height / 3.5),
                ],
              ),
            ),
            Positioned(
              bottom: 0,
              width: width,
              child: Container(
                color: lightShadeColor,
                child: CustomPaint(
                  size: Size(
                    width,
                    (width * 1.2).toDouble(),
                  ),
                  painter: CustomBGPainter(),
                ),
              ),
            ),
            Positioned(
              bottom: 100,
              width: width,
              child: Column(
                children: [
                  Text(
                    "Search By Image",
                    style: GoogleFonts.breeSerif(
                      fontSize: 32,
                      color: Colors.green[900],
                    ),
                  ),
                  SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      GestureDetector(
                        onTap: () async {
                          await grabImage(ImageSource.camera);
                          if (isImageLoaded) {
                            print(pickedImage);
                            context.router.push(
                              ImagePreviewScreenRoute(
                                pickedImage: pickedImage,
                                testString: 'Shadik',
                              ),
                            );
                          }
                        },
                        child: MediaButton(
                          icon: Icons.camera_alt,
                          label: 'Camera',
                        ),
                      ),
                      GestureDetector(
                        onTap: () async {
                          await grabImage(ImageSource.gallery);
                          if (isImageLoaded) {
                            print(pickedImage);
                            context.router.push(
                              ImagePreviewScreenRoute(
                                pickedImage: pickedImage,
                                testString: 'Shadik',
                              ),
                            );
                            // Navigator.push(
                            //     context,
                            //     MaterialPageRoute(
                            //         builder: (context) => TestDetection(
                            //               pickedImage: pickedImage,
                            //             )));
                          }
                        },
                        child: MediaButton(
                          icon: Icons.image,
                          label: 'Gallery',
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Positioned(
              bottom: height / 1.9,
              child: ClipOval(
                child: Container(
                  color: secondaryGreyColor,
                  width: width,
                  height: 100,
                ),
              ),
            ),
            Positioned(
              bottom: height / 1.8,
              child: Container(
                color: secondaryGreyColor,
                width: width,
                height: 100,
              ),
            ),
            Positioned(
              bottom: height / 1.55,
              child: Container(
                alignment: Alignment.center,
                height: 50,
                width: width,
                child: Text(
                  'Capture Only Fruit/Vegetable' '\'s Image',
                  style: GoogleFonts.breeSerif(
                    fontSize: 22,
                    color: Colors.green[900],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class MediaButton extends StatefulWidget {
  const MediaButton({
    Key? key,
    required this.icon,
    required this.label,
  }) : super(key: key);

  final IconData icon;
  final String? label;
  @override
  State<MediaButton> createState() => _MediaButtonState();
}

class _MediaButtonState extends State<MediaButton> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Card(
          color: secondaryGreyColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15),
          ),
          elevation: 8,
          child: Container(
            height: 100,
            width: 100,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              //boxShadow: buttonBoxShadowColor,
            ),
            alignment: Alignment.center,
            child: NeumorphicIcon(
              widget.icon,
              size: 50,
              style: NeumorphicStyle(
                  color: Colors.green[900],
                  depth: 100,
                  shape: NeumorphicShape.concave,
                  lightSource: LightSource.topLeft),
              // color: Colors.green[900],
            ),
          ),
        ),
        SizedBox(height: 20),
        Text(
          widget.label!,
          style: GoogleFonts.breeSerif(fontSize: 18),
        ),
      ],
    );
  }
}
