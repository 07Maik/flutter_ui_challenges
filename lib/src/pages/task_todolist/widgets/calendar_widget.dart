import 'package:flutter/material.dart';

class Calendar extends StatelessWidget {
  const Calendar({super.key});

  static const List<String> dayOfWeek = <String>[
    "Sun",
    "Mon",
    "Tue",
    "Wed",
    "Thu",
    "Fri",
    "Sat"
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      constraints: const BoxConstraints(minHeight: 70, maxHeight: 80),
      child: ListView.builder(
        padding: const EdgeInsets.only(bottom: 20),
        physics: const BouncingScrollPhysics(),
        itemCount: dayOfWeek.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (BuildContext context, int index) {
          return Container(
            margin: const EdgeInsets.symmetric(horizontal: 5),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  dayOfWeek[index],
                  style: const TextStyle(fontSize: 12),
                ),
                dayOfMonth(index == 0, index)
              ],
            ),
          );
        },
      ),
    );
  }

  Widget dayOfMonth(bool isSelected, int index) {
    final text = Text(
      '0${index + 1}',
      style: const TextStyle(fontSize: 16),
    );

    return isSelected
        ? CircleAvatar(
            foregroundColor: Colors.white,
            backgroundColor: const Color(0xffef4c66),
            radius: 20,
            child: text,
          )
        : Container(
            alignment: Alignment.center,
            height: 40,
            width: 40,
            child: text,
          );
  }
}
