import 'package:flutter/material.dart';
import 'package:smooth_star_rating_null_safety/smooth_star_rating_null_safety.dart';

class StarRateWidget extends StatelessWidget {
  StarRateWidget({super.key, required this.rate});

  final int rate;

  @override
  Widget build(BuildContext context) {
    return SmoothStarRating(
        allowHalfRating: false,
        onRatingChanged: (v) {
          // setState(() {
          //   widget.rate = v.toInt();
          // });
        },
        starCount: 5,
        rating: rate.toDouble(),
        size: 20,
        filledIconData: Icons.star,
        halfFilledIconData: Icons.blur_on,
        color: Colors.blue,
        borderColor: Colors.blue,
        spacing: 0.0);
  }
}
