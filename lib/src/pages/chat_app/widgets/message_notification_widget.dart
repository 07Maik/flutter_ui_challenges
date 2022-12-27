import 'package:flutter/material.dart';

class MessageNotification extends StatelessWidget {
  const MessageNotification({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Container(
            height: 40,
            alignment: Alignment.centerRight,
            decoration: BoxDecoration(
                color: Color(0xff251d2f),
                borderRadius: BorderRadius.circular(8)),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                const Icon(
                  Icons.warning_rounded,
                  color: Colors.orange,
                  size: 30,
                ),
                Container(
                  margin: const EdgeInsets.only(left: 10),
                  child: const Text(
                    "All the chats will be monitored",
                    style: TextStyle(
                        color: Color(0xffff9100),
                        fontSize: 14,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                const Icon(Icons.close, color: Colors.white70, size: 20)
              ],
            ),
          ),
        ),
      ],
    );
  }
}
