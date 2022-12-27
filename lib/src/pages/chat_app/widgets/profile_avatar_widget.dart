import 'package:flutter/material.dart';

class ProfileAvatar extends StatelessWidget {
  final String? pathProfileImage;
  final bool isOnline;

  const ProfileAvatar({
    Key? key,
    required this.pathProfileImage,
    this.isOnline = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.bottomRight,
      children: [
        CircleAvatar(
          backgroundColor: Colors.grey,
          backgroundImage:
              pathProfileImage != null ? NetworkImage(pathProfileImage!) : null,
        ),
        Container(
          width: 13,
          height: 13,
          decoration: BoxDecoration(
              color:
                  isOnline ? const Color(0xff00b04c) : const Color(0xffa9a5a5),
              shape: BoxShape.circle,
              border: Border.all(color: Colors.white)),
        )
      ],
    );
  }
}
