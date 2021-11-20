import 'package:flutter/material.dart';

class CustomBottomPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint_0 = new Paint()
      ..color = Color(0xfffafafa)
      ..style = PaintingStyle.fill
      ..strokeWidth = 1.0;

    Path path_0 = Path();
    path_0.moveTo(size.width * 0.0012500, size.height * 0.1);
    path_0.lineTo(size.width * 0.0025000, size.height * 0.1000000);
    path_0.quadraticBezierTo(size.width * 0.1256250, size.height * 0.3225000,
        size.width * 0.5012500, size.height * 0.3200000);
    path_0.quadraticBezierTo(size.width * 0.8762500, size.height * 0.3180000,
        size.width, size.height * 0.1);
    path_0.lineTo(size.width, size.height * 0.1);
    path_0.lineTo(size.width * 0.0012500, size.height * 0.1);
    path_0.close();

    canvas.drawPath(path_0, paint_0);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
