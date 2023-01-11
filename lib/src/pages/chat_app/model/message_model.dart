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

  static List<MessageModel> getMessages() {
    return [
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
          message:
              'Nice to hear your! I want to know more about your achievements',
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
  }
}
