class ChatMessageModel {

  final String role;
  final List<ChatPartModel> parts;

  ChatMessageModel(this.role, this.parts);
}
class ChatPartModel{
  final String text;
  ChatPartModel({
    required this.text,
  });
}