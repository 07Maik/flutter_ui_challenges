import 'package:flutter/material.dart';

import 'package:flutter_ui_challenges/core/presentation/pages/home_page.dart';
import 'package:flutter_ui_challenges/core/presentation/pages/layout_page.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage()
      
      // LayoutPage(
      //                     widget: Container(),
      //                     description: 'Prueba',
      //                     title: 'Food App'),
    );
  }
}
