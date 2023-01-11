import 'package:flutter/material.dart';

import 'package:provider/provider.dart';

import 'package:flutter_ui_challenges/src/pages/chat_app/model/message_model.dart';

import '../../constants.dart';
import '../../provider/chat_messages.dart';
import 'widgets/message_button_input_widget.dart';
import 'widgets/message_notification_widget.dart';
import 'widgets/message_widget.dart';
import '../../widgets/profile_avatar_widget.dart';

class ChatScreen extends StatelessWidget {
  final String idUser;
  final String? urlImage;
  final String name;
  final bool isOnline;

  const ChatScreen({
    super.key,
    required this.idUser,
    required this.name,
    required this.isOnline,
    this.urlImage,
  });

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (BuildContext context) => ChatMessages(idUser),
      builder: (context, child) {
        final messages = Provider.of<ChatMessages>(context).getMessages();

        return Scaffold(
          backgroundColor: Constants.primaryColor,
          appBar: appBar(),
          body: Padding(
            padding: const EdgeInsets.symmetric(
                horizontal: Constants.kPadding, vertical: 10),
            child: Column(
              children: [
                const MessageNotification(),
                dayOfWeek(),
                conversation(messages),
                messageInput()
              ],
            ),
          ),
        );
      },
    );
  }

  AppBar appBar() {
    var title = Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        ProfileAvatar(pathProfileImage: urlImage, isOnline: isOnline),
        const SizedBox(width: 15),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(name, style: const TextStyle(fontSize: 14)),
            Text(
              isOnline ? 'Online now' : 'Offline',
              style: TextStyle(
                color: isOnline ? const Color(0xff009f46) : Colors.grey[500],
                fontSize: 12,
              ),
            ),
          ],
        ),
      ],
    );

    var actions = Container(
      width: 100,
      margin: const EdgeInsets.only(right: 10),
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
              padding: const EdgeInsets.all(5),
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey),
                  borderRadius: BorderRadius.circular(5)),
              child: const Icon(Icons.phone_rounded)),
          Container(
              padding: const EdgeInsets.all(5),
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey),
                  borderRadius: BorderRadius.circular(8)),
              child: const Icon(Icons.video_camera_front_sharp)),
        ],
      ),
    );

    return AppBar(
      elevation: 0,
      backgroundColor: const Color(0xff0c0921),
      leading: const Icon(Icons.arrow_back_ios_new),
      leadingWidth: 40,
      titleSpacing: 0,
      title: title,
      actions: [actions],
    );
  }

  Widget dayOfWeek() {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 10),
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
      decoration: BoxDecoration(
        color: Colors.white10,
        borderRadius: BorderRadius.circular(15),
      ),
      child: const Text(
        " Today ",
        style: TextStyle(color: Constants.primaryTextColor, fontSize: 12),
      ),
    );
  }

  Widget conversation(List<MessageModel> messages) {
    return Expanded(
        child: ListView.builder(
      physics: const BouncingScrollPhysics(),
      itemCount: messages.length,
      itemBuilder: (context, index) {
        final message = messages[index];
        return Message(
            date: message.date,
            isMyMessage: !(message.idUser == idUser),
            message: message.message);
      },
    ));
  }

  Widget messageInput() {
    final outlineInputBorder = OutlineInputBorder(
        borderSide: BorderSide.none, borderRadius: BorderRadius.circular(25));

    return TextField(
      style: const TextStyle(color: Colors.white),
      decoration: InputDecoration(
        fillColor: Constants.secondaryColor,
        filled: true,
        isDense: true,
        prefixIcon: const MessageButtonInput(icon: Icons.emoji_emotions),
        suffixIcon: SizedBox(
          width: 110,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: const [
              MessageButtonInput(icon: Icons.camera_alt),
              MessageButtonInput(icon: Icons.send),
            ],
          ),
        ),
        hintText: 'Type a message',
        hintStyle: const TextStyle(
          color: Colors.white70,
          fontSize: 13,
          fontWeight: FontWeight.bold,
        ),
        enabledBorder: outlineInputBorder,
        focusedBorder: outlineInputBorder,
      ),
    );
  }
}
