import 'package:flutter/material.dart';

class MenuModel {
  final IconData iconNotselected;
  final IconData iconselected;

  MenuModel({
    required this.iconNotselected,
    required this.iconselected,
  });

  static List<MenuModel> getList() => [
        MenuModel(
          iconNotselected: Icons.add_alarm,
          iconselected: Icons.add_alarm_rounded,
        ),
        MenuModel(
          iconNotselected: Icons.access_time,
          iconselected: Icons.access_time_filled,
        ),
        MenuModel(
          iconNotselected: Icons.timer_outlined,
          iconselected: Icons.timer,
        ),
        MenuModel(
          iconNotselected: Icons.hourglass_empty,
          iconselected: Icons.hourglass_full,
        ),
      ];
}
