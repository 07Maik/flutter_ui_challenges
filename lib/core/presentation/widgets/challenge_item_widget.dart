import 'package:flutter/material.dart';

import 'package:flutter_ui_challenges/core/utils.dart';

class ChallengeItem extends StatelessWidget {
  final String title;
  final String description;
  final VoidCallback function;
  final Map<String, String>? designSource;

  const ChallengeItem({
    Key? key,
    required this.title,
    required this.description,
    required this.function,
    required this.designSource,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 155,
      child: Stack(children: [
        Card(
          shadowColor: Colors.grey[50],
          elevation: 5,
          margin: const EdgeInsets.symmetric(vertical: 10),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          color: Colors.grey[200],
          child: ListTile(
            contentPadding: const EdgeInsets.all(15),
            horizontalTitleGap: 0,
            onTap: function,
            title: Padding(
              padding: const EdgeInsets.only(bottom: 5.0),
              child: Text(
                title,
                style: const TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 18,
                ),
              ),
            ),
            subtitle: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  description,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: const TextStyle(color: Colors.grey),
                ),
                const Spacer(),
                if (designSource != null)
                  Container(
                    margin: const EdgeInsets.only(bottom: 25),
                    child: TextButton(
                      style: TextButton.styleFrom(padding: EdgeInsets.zero),
                      onPressed: () => openExternalLink(designSource!),
                      child: const Text(
                        'Design credits',
                        style: TextStyle(color: Colors.blue),
                      ),
                    ),
                  )
              ],
            ),
            trailing: Container(
              margin: const EdgeInsets.only(top: 30),
              height: double.infinity,
              child: const Icon(
                Icons.arrow_forward_sharp,
                color: Colors.black87,
              ),
            ),
          ),
        ),
      ]),
    );
  }
}
