import 'package:flutter/material.dart';

Widget buildRatingStars(double rating) {
  int fullStars = rating.floor();
  bool hasHalfStar = rating - fullStars >= 0.5;
  int emptyStars = 5 - fullStars - (hasHalfStar ? 1 : 0);

  List<Widget> stars = [];
  for (int i = 0; i < fullStars; i++) {
    stars.add(Icon(Icons.star, color: Colors.amber, size: 20));
  }
  if (hasHalfStar) {
    stars.add(Icon(Icons.star_half, color: Colors.amber, size: 20));
  }
  for (int i = 0; i < emptyStars; i++) {
    stars.add(Icon(Icons.star_border, color: Colors.amber, size: 20));
  }
  return Row(children: stars);
}