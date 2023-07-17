import 'package:flutter/material.dart';

class SkillWidget extends StatelessWidget {
  const SkillWidget({
    super.key, required this.image, required this.name, required this.value,
  });

  final String image;
  final String name;
  final String value;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 90,
      height: 50,
      child: Stack(
        children: [
          Positioned(
            bottom: 0,
            child: Container(
              clipBehavior: Clip.hardEdge,
              width: 90,
              height: 40,
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                      colors: [
                        const Color(0xff9c7be2).withOpacity(0.8),
                        const Color(0xff9c58dc).withOpacity(0.8),
                      ]
                  ),
                  borderRadius: const BorderRadius.all(Radius.circular(12)),
                  border: Border.all(width: 0.4, color: Colors.white.withOpacity(0.5)),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.4),
                      blurRadius: 12,
                    )
                  ]
              ),
              child: Stack(),
            ),
          ),
          Positioned(
            right: 4,
            child: SizedBox(
              width: 40,
              height: 40,
              child: Image.asset('assets/images/$image.png'),
            ),),
          Positioned(
              top: 12,
              left: 4,
              child: Column(
                children: [
                  Text(name, style: TextStyle(color: Colors.white.withOpacity(1), fontWeight: FontWeight.bold, fontSize: 14,),),
                  Text(value, style: TextStyle(color: Colors.white.withOpacity(1), fontWeight: FontWeight.bold, fontSize: 14,),),
                ],
              ))
        ],
      ),
    );
  }
}