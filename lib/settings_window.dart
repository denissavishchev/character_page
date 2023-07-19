import 'package:character_page/widgets/type_widget.dart';
import 'package:flutter/material.dart' hide BoxDecoration, BoxShadow;
import 'package:flutter_inset_box_shadow/flutter_inset_box_shadow.dart';

class SettingsWindow extends StatefulWidget {
  const SettingsWindow({
    super.key,
  });

  @override
  State<SettingsWindow> createState() => _SettingsWindowState();
}

class _SettingsWindowState extends State<SettingsWindow> {

  double turns = 0.0;
  bool isPressedL = true;
  bool isPressedR = true;

  @override
  Widget build(BuildContext context) {

    Offset distanceL = isPressedL ? const Offset(4, 4) : const Offset(2, 2);
    Offset distanceR = isPressedR ? const Offset(4, 4) : const Offset(2, 2);
    double blurL = isPressedL ? 15 : 10;
    double blurR = isPressedR ? 15 : 10;

    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height * 0.55,
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
                Positioned(
                  right: 10,
                  bottom: 45,
                  child: Listener(
                    onPointerUp: (_) => setState(() => isPressedR = true),
                    onPointerDown: (_)  {
                      setState(() {
                        isPressedR = false;
                        turns += 1 / 4;
                      });
                    },
                    child: TypeButton(distance: distanceR, blur: blurR, isPressed: isPressedR, icon: Icons.rotate_right,),
                  ),
                ),
                Positioned(
                  left: 10,
                  bottom: 45,
                  child: Listener(
                    onPointerUp: (_) => setState(() => isPressedL = true),
                    onPointerDown: (_)  {
                      setState(() {
                        isPressedL = false;
                        turns -= 1 / 4;
                      });
                    },
                    child: TypeButton(distance: distanceL, blur: blurL, isPressed: isPressedL, icon: Icons.rotate_left,),
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

class TypeButton extends StatelessWidget {
  const TypeButton({
    super.key,
    required this.distance,
    required this.blur,
    required this.isPressed,
    required this.icon,
  });

  final Offset distance;
  final double blur;
  final bool isPressed;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 70),
      width: 60,
      height: 60,
      decoration:  BoxDecoration(
        color: Colors.deepPurple[300],
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [
            Colors.deepPurple.shade200,
            Colors.deepPurple.shade400
          ],
          stops: const [0.1, 0.9]
        ),
        borderRadius: const BorderRadius.all(Radius.circular(30)),
        boxShadow: [
          BoxShadow(
            color: Colors.deepPurple.shade700,
            offset: distance,
            blurRadius: blur,
            spreadRadius: 1
          ),
          BoxShadow(
            color: Colors.deepPurple.shade200,
            offset: -distance,
            blurRadius: blur,
            spreadRadius: 1
          ),
        ]
      ),
      child: Icon(icon,
        color: isPressed
          ? Colors.deepPurple
          : Colors.deepPurple.shade400,),
    );
  }
}