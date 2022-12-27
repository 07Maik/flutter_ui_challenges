import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:flutter_ui_challenges/core/data/models/route_model.dart';
import 'package:flutter_ui_challenges/core/presentation/widgets/custom_route_transitions.dart';
import 'package:google_fonts/google_fonts.dart';

import '../data.dart';
import '../model/chat_model.dart';
import '../widgets/float_buttom_widget.dart';
import '../widgets/profile_avatar_widget.dart';
import 'chat_screen.dart';

class ChatListScreen extends StatefulWidget {
  const ChatListScreen({super.key});

  @override
  State<ChatListScreen> createState() => _ChatListScreenState();
}

class _ChatListScreenState extends State<ChatListScreen> {
  @override
  void initState() {
    SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
      statusBarColor: Color(0xff0c0921),
      statusBarIconBrightness: Brightness.light,
    ));
    super.initState();
  }

  @override
  void dispose() {
    SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
      statusBarIconBrightness: Brightness.light,
    ));
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff0c0921),
      body: SafeArea(
        child: Column(
          children: [
            header(),
            searchBar(),
            Expanded(child: chatList()),
          ],
        ),
      ),
      floatingActionButton: const FloatButtom(),
    );
  }

  Widget header() {
    return Padding(
      padding:
          const EdgeInsets.only(right: 30.0, left: 30.0, top: 25, bottom: 15),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            'All Messages',
            style: GoogleFonts.archivo(
                color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),
          ),
          const ProfileAvatar(
              isOnline: true,
              pathProfileImage:
                  "https://res.cloudinary.com/dg6ag2cyo/image/upload/v1672068542/flutter_ui/pexels-pixabay-220453_ce1kx9.jpg"),
        ],
      ),
    );
  }

  Widget searchBar() {
    final outlineInputBorder =
        OutlineInputBorder(borderRadius: BorderRadius.circular(25));

    return Container(
      alignment: Alignment.bottomRight,
      padding: const EdgeInsets.only(left: 30, right: 30, bottom: 15),
      child: TextField(
        selectionHeightStyle: BoxHeightStyle.tight,
        style: const TextStyle(color: Colors.white),
        decoration: InputDecoration(
            isDense: true,
            fillColor: const Color(0xff1f1c32),
            filled: true,
            focusedBorder: outlineInputBorder,
            border: outlineInputBorder,
            prefixIcon: const Icon(
              Icons.search,
              color: Colors.grey,
              size: 26,
            ),
            hintText: 'Search messages',
            hintStyle: const TextStyle(
              color: Colors.grey,
              fontWeight: FontWeight.w500,
            )),
      ),
    );
  }

  Widget chatList() {
    return ListView.separated(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      physics: const BouncingScrollPhysics(),
      itemCount: chats.length,
      itemBuilder: (BuildContext context, int index) {
        final chat = chats[index];

        return InkWell(
          onTap: (() {
            CustomRouteTransitions(
                    context: context,
                    child: ChatScreen(
                        idUser: chat.id,
                        urlImage: chat.urlImage,
                        isOnline: chat.isOnline,
                        name: chat.name),
                    duration: const Duration(milliseconds: 0))
                .navigateTransitionOnLayout(DesignDeviceType.mobile);
          }),
          child: SizedBox(
            height: 50,
            child: Row(
              children: [
                ProfileAvatar(
                  isOnline: chat.isOnline,
                  pathProfileImage: chat.urlImage,
                ),
                const SizedBox(width: 10),
                _chatMessage(chat),
                const Spacer(),
                _chatBadgeUnread(chat),
              ],
            ),
          ),
        );
      },
      separatorBuilder: (BuildContext context, int index) => Divider(
        color: Colors.grey.withOpacity(0.4),
        thickness: 0.5,
      ),
    );
  }

  Column _chatMessage(ChatModel chat) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          chat.name,
          style:
              const TextStyle(color: Colors.white, fontWeight: FontWeight.w600),
        ),
        const SizedBox(height: 5),
        SizedBox(
          width: 200,
          child: Text(chat.lastMessage ?? "Send a message",
              overflow: TextOverflow.ellipsis,
              style: GoogleFonts.archivo(
                  wordSpacing: 1,
                  color:
                      chat.messagesUnread == null ? Colors.grey : Colors.white,
                  fontSize: 12,
                  fontWeight: chat.messagesUnread == null
                      ? FontWeight.normal
                      : FontWeight.w600)),
        ),
      ],
    );
  }

  Column _chatBadgeUnread(ChatModel chat) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        const SizedBox(height: 8),
        Text(
          chat.lastTimeOnline ?? "",
          style: const TextStyle(color: Colors.white60, fontSize: 12),
        ),
        if (chat.messagesUnread != null)
          Container(
            margin: const EdgeInsets.only(top: 5),
            padding: const EdgeInsets.all(3),
            alignment: Alignment.center,
            width: 30,
            decoration: BoxDecoration(
              color: const Color(0xffff7700),
              borderRadius: BorderRadius.circular(10),
            ),
            child: Text(
              chat.messagesUnread.toString(),
              style: GoogleFonts.archivo(color: Colors.white, fontSize: 10),
            ),
          )
      ],
    );
  }
}
