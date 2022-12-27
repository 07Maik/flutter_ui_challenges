import 'package:flutter_ui_challenges/src/pages/chat_app/model/chat_model.dart';

import 'model/message_model.dart';

final chats = [
  ChatModel(
      id: 'userB',
      name: "Breanna Patrick",
      lastTimeOnline: "5 min ago",
      isOnline: true,
      messagesUnread: 2,
      lastMessage: 'Wanna go outside someday?',
      urlImage:
          "https://res.cloudinary.com/dg6ag2cyo/image/upload/v1672065765/flutter_ui/pexels-suliman-sallehi-1704488_l6dpxb.jpg"),
  ChatModel(
      id: 'userC',
      name: "Dasia Patrick",
      lastTimeOnline: "5 min ago",
      isOnline: true,
      lastMessage:
          "I can play different instruments like Piano, etc. My voice range fits into falsetto and I write songs.",
      urlImage:
          "https://res.cloudinary.com/dg6ag2cyo/image/upload/v1672068739/flutter_ui/pexels-bogdan-glisik-1905975_lrkyik.jpg"),
  ChatModel(
      id: 'userD',
      name: "Patrick Nelson",
      lastMessage: "I'll synthesize the digital CSS sensor,",
      lastTimeOnline: "8 min ago",
      urlImage:
          "https://res.cloudinary.com/dg6ag2cyo/image/upload/v1672065765/flutter_ui/pexels-suliman-sallehi-1704488_l6dpxb.jpg"),
  ChatModel(
      id: 'userE',
      name: "Amya",
      isOnline: true,
      lastMessage: "I'll generate the open-source AI",
      lastTimeOnline: "10 min ago",
      urlImage:
          "https://res.cloudinary.com/dg6ag2cyo/image/upload/v1672068739/flutter_ui/pexels-bogdan-glisik-1905975_lrkyik.jpg"),
  ChatModel(
      id: 'userF',
      name: "O'Hara Kyler",
      isOnline: true,
      lastMessage: "If we navigate the interface, we can",
      lastTimeOnline: "15 min ago",
      urlImage:
          "https://res.cloudinary.com/dg6ag2cyo/image/upload/v1672065765/flutter_ui/pexels-suliman-sallehi-1704488_l6dpxb.jpg"),
  ChatModel(
      id: 'userG',
      name: "Hilda Zulauf",
      lastMessage: "We need to quantify the optical",
      lastTimeOnline: "1 hr ago",
      urlImage:
          "https://res.cloudinary.com/dg6ag2cyo/image/upload/v1672068739/flutter_ui/pexels-bogdan-glisik-1905975_lrkyik.jpg"),
  ChatModel(
      id: 'userH',
      name: "Jensen Damon",
      lastMessage: "Try to back up the KBOD pixel,",
      lastTimeOnline: "2 hr ago",
      urlImage:
          "https://res.cloudinary.com/dg6ag2cyo/image/upload/v1672065765/flutter_ui/pexels-suliman-sallehi-1704488_l6dpxb.jpg"),
  ChatModel(
      id: 'userI',
      name: "Samantha Nelson",
      lastMessage: "I'll bypass he online AGP alarm",
      lastTimeOnline: "4 hr ago",
      urlImage:
          "https://res.cloudinary.com/dg6ag2cyo/image/upload/v1672068739/flutter_ui/pexels-bogdan-glisik-1905975_lrkyik.jpg"),
  ChatModel(
      id: 'userJ',
      name: "Nelson Patrick",
      lastMessage: "I'll synthesize the digital CSS sensor,",
      lastTimeOnline: "8 hr ago",
      urlImage:
          "https://res.cloudinary.com/dg6ag2cyo/image/upload/v1672065765/flutter_ui/pexels-suliman-sallehi-1704488_l6dpxb.jpg"),
  ChatModel(
      id: 'userK',
      name: "Zulauf Hilda",
      lastMessage: "We need to quantify the optical",
      lastTimeOnline: "16 hr ago",
      urlImage:
          "https://res.cloudinary.com/dg6ag2cyo/image/upload/v1672068739/flutter_ui/pexels-bogdan-glisik-1905975_lrkyik.jpg"),
  ChatModel(
      id: 'userL',
      name: "Zulauf Hilda",
      lastMessage: "We need to quantify the optical",
      lastTimeOnline: "16 hr ago",
      urlImage:
          "https://res.cloudinary.com/dg6ag2cyo/image/upload/v1672068739/flutter_ui/pexels-bogdan-glisik-1905975_lrkyik.jpg"),
];

final messages = [
  //Test Conversation

  MessageModel(
      idUser: 'userC',
      idUserTo: 'userA',
      message:
          "I'll quantify the multi-byte COM firewall, that should applicattion the RAM interface!",
      date: DateTime.now().add(const Duration(minutes: -5))),

  //from me to userC
  MessageModel(
      idUser: 'userA',
      idUserTo: 'userC',
      message: "That's great!",
      date: DateTime.now().add(const Duration(minutes: -4))),

  MessageModel(
      idUser: 'userA',
      idUserTo: 'userC',
      message: 'Nice to hear your! I want to know more about your achievements',
      date: DateTime.now().add(const Duration(minutes: -3))),
  //

  MessageModel(
      idUser: 'userC',
      idUserTo: 'userA',
      message:
          'I can play different instruments like Piano, etc. My voice range fits into falsetto and I write songs.',
      date: DateTime.now().add(const Duration(minutes: -1))),
  //

  MessageModel(
      idUser: 'userB',
      idUserTo: 'userA',
      message: "Wanna go outside someday?",
      date: DateTime.now()),

  MessageModel(
      idUser: 'userB',
      idUserTo: 'userA',
      message: "Hi",
      date: DateTime.now().add(const Duration(minutes: -1))),

  MessageModel(
      idUser: 'userD',
      idUserTo: 'userA',
      message: "I'll synthesize the digital CSS sensor,",
      date: DateTime.now()),
  MessageModel(
      idUser: 'userE',
      idUserTo: 'userA',
      message: "I'll generate the open-source AI",
      date: DateTime.now()),
  MessageModel(
      idUser: 'userF',
      idUserTo: 'userA',
      message: "If we navigate the interface, we can",
      date: DateTime.now()),
  MessageModel(
      idUser: 'userG',
      idUserTo: 'userA',
      message: "We need to quantify the optical",
      date: DateTime.now()),
  MessageModel(
      idUser: 'userH',
      idUserTo: 'userA',
      message: "Try to back up the KBOD pixel,",
      date: DateTime.now()),
  MessageModel(
      idUser: 'userI',
      idUserTo: 'userA',
      message: "I'll bypass he online AGP alarm",
      date: DateTime.now()),
  MessageModel(
      idUser: 'userJ',
      idUserTo: 'userA',
      message: "I'll synthesize the digital CSS sensor,",
      date: DateTime.now()),
  MessageModel(
      idUser: 'userK',
      idUserTo: 'userA',
      message: "We need to quantify the optical",
      date: DateTime.now()),
  MessageModel(
      idUser: 'userL',
      idUserTo: 'userA',
      message: "We need to quantify the optical",
      date: DateTime.now()),
];
