class MessageModel {
  final String idUser;
  final String idUserTo;
  final String message;
  final DateTime date;

  MessageModel({
    required this.idUser,
    required this.idUserTo,
    required this.message,
    required this.date,
  });
}
