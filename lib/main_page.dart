import 'package:character_page/settings_window.dart';
import 'package:flutter/material.dart';
import 'character_window.dart';

class MainPage extends StatelessWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color(0xff9548d6),
              Color(0xff5111ad),
            ]
          )
        ),
        width: size.width,
        height: size.height,
        child: Column(
          children: [
            const SizedBox(height: 30,),
            CharacterWindow(size: size),
            SettingsWindow()
          ],
        ),
      ),
    );
  }
}













