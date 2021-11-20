import 'package:flutter/material.dart';
import 'package:nutri_app/presentation/constants.dart';

class CustomBGPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint_0 = new Paint()
      ..color = deepShadeColor
      ..style = PaintingStyle.fill
      ..strokeWidth = 1.0;

    Path path_0 = Path();
    path_0.moveTo(size.width, size.height * 0.0940000);
    path_0.quadraticBezierTo(size.width * 1, size.height * 0.7705000,
        size.width * 1, size.height * 1);
    path_0.lineTo(size.width * 0.0025000, size.height * 1);
    path_0.quadraticBezierTo(size.width * 0.0015625, size.height * 0.3240000,
        size.width * 0.0012500, size.height * 0.1000000);
    path_0.cubicTo(
        size.width * 0.5267000,
        size.height * 0.1060600,
        size.width * 1.0081875,
        size.height * 1,
        size.width,
        size.height * 0.0940000);
    path_0.close();

    canvas.drawPath(path_0, paint_0);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
