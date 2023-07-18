import 'package:character_page/widgets/type_widget.dart';
import 'package:flutter/material.dart';

class SettingsWindow extends StatefulWidget {
  const SettingsWindow({
    super.key,
    required this.size,
  });

  final Size size;

  @override
  State<SettingsWindow> createState() => _SettingsWindowState();
}

class _SettingsWindowState extends State<SettingsWindow> {

  double turns = 0.0;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: widget.size.width,
      height: widget.size.height * 0.55,
      color: Colors.white.withOpacity(0.3),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Container(
            width: 200,
            height: 200,
            color: Colors.transparent,
            child: Stack(
              children: [
                CustomPaint(
                  foregroundPainter: TypeWidget(),
                  child: Stack(
                    children: [
                      Container(
                        width: 200,
                        height: 200,
                        color: Colors.transparent,
                        child: CustomPaint(
                          painter: BackGroundWidget(),
                        ),
                      ),
                      AnimatedRotation(
                        turns: turns,
                        duration: const Duration(milliseconds: 500),
                        curve: Curves.easeInOut,
                        child: Stack(
                          children: [
                            Positioned(
                              left: 8,
                                top: 65,
                                child: SizedBox(
                                  width: 65,
                                    height: 65,
                                    child: Image.asset('assets/images/blue.png'))),
                            Positioned(
                                right: 8,
                                top: 65,
                                child: SizedBox(
                                    width: 65,
                                    height: 65,
                                    child: Image.asset('assets/images/orange.png'))),
                            Positioned(
                                left: 65,
                                top: 8,
                                child: SizedBox(
                                    width: 65,
                                    height: 65,
                                    child: Image.asset('assets/images/purple.png'))),
                            Positioned(
                                left: 65,
                                bottom: 8,
                                child: SizedBox(
                                    width: 65,
                                    height: 65,
                                    child: Image.asset('assets/images/red.png'))),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                // Positioned(
                //   left: 0,
                //   bottom: 60,
                //   child: ElevatedButton(onPressed: () {
                //     setState(() {
                //       turns += -(1 / 4);
                //     });
                //   }, child: const Text('Left')),
                // ),
                // Positioned(
                //   right: 0,
                //   bottom: 60,
                //   child: ElevatedButton(onPressed: () {
                //     setState(() {
                //       turns += 1 / 4;
                //     });
                //   }, child: const Text('Right')),
                // ),
                Positioned(
                  right: 10,
                  bottom: 45,
                  child: Container(
                    width: 60,
                    height: 60,
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(Radius.circular(30)),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black,
                          spreadRadius: 2
                        ),
                        BoxShadow(
                            color: Color(0xff7414ba),
                            spreadRadius: 0.5,
                          blurRadius: 1,
                          offset: Offset(-0.5, -0.5)
                        ),
                      ]
                    ),
                  ),
                ),
              ],
            ),
          ),

        ],
      ),
    );
  }
}