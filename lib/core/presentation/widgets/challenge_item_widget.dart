import 'package:flutter/material.dart';

class ChallengeItem extends StatelessWidget {
  final String title;
  final String description;
  final VoidCallback function;

  const ChallengeItem({
    Key? key,
    required this.title,
    required this.description,
    required this.function,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      shadowColor: Colors.grey[50],
      elevation: 5,
      margin: const EdgeInsets.symmetric(vertical: 10),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      color: Colors.grey[200],
      child: ListTile(
        contentPadding: const EdgeInsets.all(15),
        horizontalTitleGap: 0,
        onTap: function,
        title: Padding(
          padding: const EdgeInsets.only(bottom: 10.0),
          child: Text(
            title,
            style: const TextStyle(fontWeight: FontWeight.w500, fontSize: 18),
          ),
        ),
        subtitle: Text(
          description,
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
          style: const TextStyle(color: Colors.grey),
        ),
        trailing: const SizedBox(
          height: double.infinity,
          child: Icon(Icons.arrow_forward_sharp, color: Colors.black87),
        ),
      ),
    );
  }
}
