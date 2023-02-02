List<int> median(int number) {
  var middle = number ~/ 2;
  return number % 2 == 1 ? [middle] : [middle - 1, middle];
}

List<double> calculateAngle(int index, int menuLength) {
  late double widthTop, widthBottom;
  const double baseWidth = 25;

  final medians = median(menuLength);

  if (medians.contains(index)) {
    widthTop = baseWidth + (5 * (medians.first - 1));
    widthBottom = baseWidth + (5 * (medians.first - 1));
  } else if (index > medians.last) {
    final lenghtOptions = menuLength - 1;

    widthTop = (baseWidth + ((lenghtOptions - index) * 5));

    if (lenghtOptions == index) {
      widthBottom = widthTop - 10;
    } else {
      widthBottom = widthTop - 5;
    }
  } else {
    if (index == 0) {
      widthBottom = baseWidth;
      widthTop = widthBottom - 10;
    } else {
      widthBottom = (baseWidth + (index * 5));
      widthTop = widthBottom - 5;
    }
  }

  return [widthTop, widthBottom];
}
