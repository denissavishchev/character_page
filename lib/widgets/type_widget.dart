import 'package:flutter/material.dart';

class TypeWidget extends CustomPainter {

  @override
  void paint(Canvas canvas, Size size) {
    var colors = Offset.zero & size;

    var backGroundPaint = Paint()
      ..shader = LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          stops: const [0.0, 0.4],
          colors: [
            Colors.deepPurple.shade100,
            Colors.deepPurple.shade300,
          ]).createShader(colors)
      ..style = PaintingStyle.fill
      ..strokeCap = StrokeCap.round
      ..isAntiAlias = true;

    var backGroundPath = Path()
      ..moveTo(0, size.height * 0.35)
      ..lineTo(0, size.height * 0.7)
      ..cubicTo(size.width * 0.3, size.height * 1.05, size.width * 0.7, size.height * 1.05, size.width, size.height * 0.7)
      ..lineTo(size.width, size.height * 0.3)
      ..cubicTo(size.width, size.height * 0.35, size.width * 0.95, size.height * 0.38, size.width * 0.9, size.height * 0.4)
      ..lineTo(size.width * 0.7, size.height * 0.46)
      ..cubicTo(size.width * 0.68, size.height * 0.46, size.width * 0.68, size.height * 0.48, size.width * 0.55, size.height * 0.4)
      ..quadraticBezierTo(size.width * 0.5, size.height * 0.38, size.width * 0.47, size.height * 0.4)
      ..cubicTo(size.width * 0.35, size.height * 0.45, size.width * 0.35, size.height * 0.46, size.width * 0.3, size.height * 0.45)
      ..lineTo(size.width * 0.02, size.height * 0.38)
      ..cubicTo(0, size.height * 0.35, 0, size.height * 0.35, size.width * 0.02, size.height * 0.3);

    canvas.drawPath(backGroundPath, backGroundPaint);


    var paintShadow = Paint()
      ..shader = LinearGradient(
        colors: [
          Colors.black.withAlpha(0),
          Colors.black.withAlpha(10),
          Colors.black.withAlpha(10),
          Colors.black.withAlpha(40),
          Colors.black.withAlpha(50)
        ],
      ).createShader(colors)
      ..style = PaintingStyle.stroke
      ..strokeWidth = 8
      ..isAntiAlias = true;

    var pathShadow = Path()
      ..moveTo(size.width * 0.02, size.height * 0.3)
      ..cubicTo(size.width * 0.2, size.height * -0.08, size.width * 0.8, size.height * -0.08, size.width * 0.98, size.height * 0.3)
      ..cubicTo(size.width, size.height * 0.35, size.width * 0.95, size.height * 0.38, size.width * 0.9, size.height * 0.4)
      ..lineTo(size.width * 0.7, size.height * 0.46)
      ..cubicTo(size.width * 0.68, size.height * 0.46, size.width * 0.68, size.height * 0.48, size.width * 0.55, size.height * 0.4)
      ..quadraticBezierTo(size.width * 0.5, size.height * 0.38, size.width * 0.47, size.height * 0.4)
      ..cubicTo(size.width * 0.35, size.height * 0.45, size.width * 0.35, size.height * 0.46, size.width * 0.3, size.height * 0.45)
      ..lineTo(size.width * 0.02, size.height * 0.38)
      ..cubicTo(0, size.height * 0.35, 0, size.height * 0.35, size.width * 0.02, size.height * 0.3);

    canvas.drawPath(pathShadow, paintShadow);

    var paint = Paint()
      ..shader = const LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          stops: [0.1, 0.5],
          colors: [
            Color(0xfff6ebff),
            Color(0xffac53ff),
          ]).createShader(colors)
      ..style = PaintingStyle.stroke
      ..strokeWidth = 4.0
      ..strokeCap = StrokeCap.round
      ..isAntiAlias = true;

    var path = Path()
      ..moveTo(size.width * 0.02, size.height * 0.3)
      ..cubicTo(size.width * 0.2, size.height * -0.08, size.width * 0.8, size.height * -0.08, size.width * 0.98, size.height * 0.3)
      ..cubicTo(size.width, size.height * 0.35, size.width * 0.95, size.height * 0.38, size.width * 0.9, size.height * 0.4)
      ..lineTo(size.width * 0.7, size.height * 0.46)
      ..cubicTo(size.width * 0.68, size.height * 0.46, size.width * 0.68, size.height * 0.48, size.width * 0.55, size.height * 0.4)
      ..quadraticBezierTo(size.width * 0.5, size.height * 0.38, size.width * 0.47, size.height * 0.4)
      ..cubicTo(size.width * 0.35, size.height * 0.45, size.width * 0.35, size.height * 0.46, size.width * 0.3, size.height * 0.45)
      ..lineTo(size.width * 0.02, size.height * 0.38)
      ..cubicTo(0, size.height * 0.35, 0, size.height * 0.35, size.width * 0.02, size.height * 0.3);

    canvas.drawPath(path, paint);

  }
  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}

class BackGroundWidget extends CustomPainter {

  @override
  void paint(Canvas canvas, Size size) {
    var colors = Offset.zero & size;

    var paint = Paint()
      ..shader = const RadialGradient(
          radius: 0.8,
          stops: [0.2, 0.7],
          colors: [
            Color(0xff0f599f),
            Color(0xff0f0124),
          ]).createShader(colors)
      ..style = PaintingStyle.fill
      ..strokeCap = StrokeCap.round
      ..isAntiAlias = true;

    var path = Path()
      ..moveTo(size.width * 0.02, size.height * 0.3)
      ..cubicTo(size.width * 0.2, size.height * -0.08, size.width * 0.8, size.height * -0.08, size.width * 0.98, size.height * 0.3)
      ..lineTo(size.width, size.height * 0.7)
      ..lineTo(0, size.height * 0.7)
      ..lineTo(0, size.height * 0.35)
    ;

    canvas.drawPath(path, paint);

  }
  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}