import 'dart:io';

import 'package:flutter/material.dart';
import 'package:tflite/tflite.dart';

class TestDetection extends StatefulWidget {
  const TestDetection({
    Key? key,
    this.pickedImage,
  }) : super(key: key);

  final File? pickedImage;
  @override
  _TestDetectionState createState() => _TestDetectionState();
}

class _TestDetectionState extends State<TestDetection> {
  List? _recognitions;
  bool _busy = false;
  double? _imageWidth, _imageHeight;

  // this function loads the model
  loadTfModel() async {
    await Tflite.loadModel(
      model: "assets/model_unquant.tflite",
      labels: "assets/labels.txt",
    );
  }

  // this function detects the objects on the image
  detectObject(File image) async {
    var recognitions = await Tflite.detectObjectOnImage(
        path: image.path, // required
        model: "SSDMobileNet",
        imageMean: 127.5,
        imageStd: 127.5,
        threshold: 0.00000001, // defaults to 0.1
        numResultsPerClass: 2, // defaults to 5
        asynch: true // defaults to true
        );
    FileImage(image)
        .resolve(ImageConfiguration())
        .addListener((ImageStreamListener((ImageInfo info, bool _) {
          setState(() {
            _imageWidth = info.image.width.toDouble();
            _imageHeight = info.image.height.toDouble();
          });
        })));
    setState(() {
      _recognitions = recognitions;
    });
  }

  @override
  void initState() {
    _busy = true;
    loadTfModel().then((val) {
      {
        setState(() {
          _busy = false;
        });
      }
    });
    super.initState();
  }

  // display the bounding boxes over the detected objects
  List<Widget> renderBoxes(Size screen) {
    if (_recognitions == null) return [];
    if (_imageWidth == null || _imageHeight == null) return [];

    double factorX = screen.width;
    double factorY = _imageHeight! / _imageHeight! * screen.width;

    Color blue = Colors.blue;

    return _recognitions!.map((re) {
      return Container(
        child: Positioned(
            left: re["rect"]["x"] * factorX,
            top: re["rect"]["y"] * factorY,
            width: re["rect"]["w"] * factorX,
            height: re["rect"]["h"] * factorY,
            child: ((re["confidenceInClass"] > 0.50))
                ? Container(
                    decoration: BoxDecoration(
                        border: Border.all(
                      color: blue,
                      width: 3,
                    )),
                    child: Text(
                      "${re["detectedClass"]} ${(re["confidenceInClass"] * 100).toStringAsFixed(0)}%",
                      style: TextStyle(
                        background: Paint()..color = blue,
                        color: Colors.white,
                        fontSize: 15,
                      ),
                    ),
                  )
                : Container()),
      );
    }).toList();
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    List<Widget> stackChildren = [];

    stackChildren.add(Positioned(
      // using ternary operator
      child: widget.pickedImage == null
          ? Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text("Please Select an Image"),
                ],
              ),
            )
          : // if not null then
          Container(child: Image.file(widget.pickedImage!)),
    ));

    stackChildren.addAll(renderBoxes(size));

    if (_busy) {
      stackChildren.add(Center(
        child: CircularProgressIndicator(),
      ));
    }

    return Scaffold(
      appBar: AppBar(
        title: Text("Object Detector"),
      ),
      // floatingActionButton: Row(
      //   mainAxisAlignment: MainAxisAlignment.end,
      //   children: <Widget>[
      //     FloatingActionButton(
      //       heroTag: "Fltbtn2",
      //       child: Icon(Icons.camera_alt),
      //       onPressed: getImageFromCamera,
      //     ),
      //     SizedBox(width: 10,),
      //     FloatingActionButton(
      //       heroTag: "Fltbtn1",
      //       child: Icon(Icons.photo),
      //       onPressed: getImageFromGallery,
      //     ),
      //   ],
      // ),
      body: Container(
        alignment: Alignment.center,
        child: Stack(
          children: stackChildren,
        ),
      ),
    );
  }
}
