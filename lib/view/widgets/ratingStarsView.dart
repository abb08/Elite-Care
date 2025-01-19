import 'package:flutter/material.dart';

import '../../utils/dimentions.dart';

class RatingStarsView extends StatelessWidget {
  double rating;
  double size;
  Color color;

  RatingStarsView(
      {super.key,
      required this.rating,
      this.size = 0,
      this.color = Colors.yellow});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        for (int i = 0; i < rating; i++)
          Icon(
            Icons.star,
            size: size == 0 ? Dimensions.iconSize16 : size,
            color: color,
          ),
        for (int i = 0; i < 5 - rating; i++)
          Icon(
            Icons.star_outline_outlined,
            size: size == 0 ? Dimensions.iconSize16 : size,
            color: Colors.yellow,
          ),
      ],
    );
  }
}
