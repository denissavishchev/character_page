import 'package:flutter/material.dart';

class SmallShadowWidget extends StatelessWidget {
  const SmallShadowWidget({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 60,
      height: 60,
      decoration: const BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: Color(0xffd5c1e5),
              blurRadius: 25,
              spreadRadius: 0,
              offset: Offset(0, 3),
            )
          ]
      ),
    );
  }
}
