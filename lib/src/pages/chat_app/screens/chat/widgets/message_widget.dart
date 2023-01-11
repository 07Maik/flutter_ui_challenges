import 'package:flutter/material.dart';

import 'package:google_fonts/google_fonts.dart';

import '../../../constants.dart';

class Message extends StatelessWidget {
  final String message;
  final bool isMyMessage;
  final DateTime date;

  const Message(
      {super.key,
      required this.date,
      required this.message,
      required this.isMyMessage});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Container(
          padding: const EdgeInsets.all(10),
          margin: isMyMessage
              ? const EdgeInsets.symmetric(vertical: 3)
              : const EdgeInsets.only(top: 10, bottom: 5),
          width: double.infinity,
          decoration: BoxDecoration(
            color: isMyMessage
                ? Constants.backgroundMessageColor1
                : Constants.backgroundMessageColor2,
            borderRadius: isMyMessage
                ? const BorderRadius.only(
                    topLeft: Radius.circular(8),
                    bottomLeft: Radius.circular(8),
                    bottomRight: Radius.circular(8))
                : const BorderRadius.only(
                    topRight: Radius.circular(8),
                    bottomLeft: Radius.circular(8),
                    bottomRight: Radius.circular(8)),
          ),
          child: Text(message,
              style: GoogleFonts.archivo(
                  color: Colors.grey[300],
                  fontWeight:
                      FontWeight.w500) //const TextStyle(color: Colors.white),
              ),
        ),
        if (!isMyMessage)
          Container(
            margin: const EdgeInsets.only(bottom: 10),
            child: Text(
              "Report   ${getTime()}",
              style: const TextStyle(
                  color: Constants.secondaryTextColor, fontSize: 10),
            ),
          )
      ],
    );
  }

  String getTime() {
    int hour = date.hour;
    hour = hour < 12 ? hour : hour - 12;

    return "${hour.toString()}:${date.minute.toString()} ${(date.hour > 12 ? "PM" : "AM")}";
  }
}
