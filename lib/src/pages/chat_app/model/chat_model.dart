class ChatModel {
  final String id;
  final String name;
  final bool isOnline;
  final String? lastMessage;
  final int? messagesUnread;
  final String? lastTimeOnline;
  final String? urlImage;

  ChatModel(
      {required this.id,
      required this.name,
      this.urlImage,
      this.lastMessage,
      this.isOnline = false,
      this.messagesUnread,
      this.lastTimeOnline});

  static List<ChatModel> getChats() {
    return [
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
  }
}
