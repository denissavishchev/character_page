import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class LuckWidget extends StatelessWidget {
  const LuckWidget({
    super.key,
    required this.starItems,
  });

  final double starItems;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 4, vertical: 7),
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
      child: SizedBox(
        width: 90,
        height: 40,
        child: RatingBar.builder(
          unratedColor: const Color(0xff7712d1),
          initialRating: starItems,
          minRating: 1,
          direction: Axis.vertical,
          itemCount: 3,
          itemSize: 27,
          itemBuilder: (context, _) =>
          const Icon(Icons.star,
            color: Color(0xff71dcff),
          ),
          onRatingUpdate: (rating) {
            print(rating);
          },
        ),
      ),
    );
  }
}