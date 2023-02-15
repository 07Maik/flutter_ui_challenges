import 'package:flutter/material.dart';

class CustomCard extends StatelessWidget {
  final String title;
  const CustomCard({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      width: double.infinity,
      color: Colors.grey[200],
      child: Text(
        title.toUpperCase(),
        style: const TextStyle(fontSize: 18),
      ),
    );
  }
}
