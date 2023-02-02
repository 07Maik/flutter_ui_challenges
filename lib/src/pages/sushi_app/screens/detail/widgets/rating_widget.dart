import 'package:flutter/material.dart';

class Rating extends StatelessWidget {
  final double rate;
  const Rating({
    super.key,
    required this.rate,
  });

  static const _maxStar = 5;

  @override
  Widget build(BuildContext context) {
    return Row(children: stars());
  }

  List<Icon> stars() {
    const starColor = Color(0xffff8f56);
    const starSize = 14.0;

    final List<Icon> stars = List.generate(rate.toInt(),
            (index) => const Icon(Icons.star, color: starColor, size: starSize))
        .toList();

    if (stars.length < _maxStar && stars.length != rate) {
      stars.add(const Icon(Icons.star_half, color: starColor, size: starSize));
    }

    if (stars.length < _maxStar) {
      stars.addAll(List.generate(
          5 - stars.length,
          (index) =>
              const Icon(Icons.star, color: Color(0xffd9dbe1), size: starSize)));
    }

    return stars.sublist(0, _maxStar);
  }
}
