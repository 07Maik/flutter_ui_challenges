import 'package:flutter/foundation.dart';

import 'package:flutter_ui_challenges/src/pages/chat_app/model/message_model.dart';

class ChatMessages extends ChangeNotifier {
  late List<MessageModel> _chatMessages;
  final String idUser;

  ChatMessages(this.idUser) {
    _chatMessages = MessageModel.getMessages()
        .where(
            (element) => element.idUser == idUser || element.idUserTo == idUser)
        .toList();
  }

  List<MessageModel> getMessages() {
    _chatMessages.sort((a, b) => a.date.compareTo(b.date));

    return _chatMessages;
  }
}
