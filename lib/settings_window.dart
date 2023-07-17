import 'package:flutter/material.dart';

class SettingsWindow extends StatelessWidget {
  const SettingsWindow({
    super.key,
    required this.size,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size.width,
      height: size.height * 0.55,
      color: Colors.white.withOpacity(0.3),
    );
  }
}