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
}
