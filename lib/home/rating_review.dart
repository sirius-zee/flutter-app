import 'package:flutter/material.dart';

class RatingReview extends StatelessWidget {
  final String rating;
  final String review;

  const RatingReview({super.key, required this.rating, required this.review});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Icon(
          Icons.star_rate_rounded,
          size: 26,
          color: Colors.amber,
        ),
        Text(
          rating,
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(width: 4),
        Text(
          '($review)',
          style: TextStyle(color: Colors.grey),
        )
      ],
    );
  }
}
