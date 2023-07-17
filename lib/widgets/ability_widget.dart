import 'package:flutter/material.dart';

class AbilityWidget extends StatelessWidget {
  const AbilityWidget({
    super.key,
    required this.size,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: size.width * 0.42,
      height: 40,
      child: const Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          AbilityItem(image: 'brain',),
          AbilityItem(image: 'gear',),
          AbilityItem(image: 'lab',),
        ],
      ),
    );
  }
}

class AbilityItem extends StatelessWidget {
  const AbilityItem({
    super.key, required this.image,
  });

  final String image;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 2),
      padding: const EdgeInsets.all(2),
      clipBehavior: Clip.hardEdge,
      width: 40,
      height: 40,
      decoration: BoxDecoration(
          gradient: LinearGradient(
              colors: [
                const Color(0xff9c7be2).withOpacity(0.8),
                const Color(0xff7e26d7).withOpacity(0.8),
              ],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight
          ),
          borderRadius: const BorderRadius.all(Radius.circular(20)),
          border: Border.all(width: 0.4, color: Colors.white.withOpacity(0.5)),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.4),
              blurRadius: 12,
            )
          ]
      ),
      child: Image.asset('assets/images/$image.png'),
    );
  }
}