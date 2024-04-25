import 'package:dio/dio.dart';
import 'package:spacebot/models/chat_message_model.dart';
import 'package:spacebot/utils/constants.dart';

class SpaceRepo {
  static chatTextGenerationRepo(
      List<ChatMessageModel> previousMessages) async {
        Dio dio = Dio();
        


        final response = dio.post("https://generativelanguage.googleapis.com/v1beta/models/gemini-1.5-pro-latest:generateContent?key=${apikey}",
        );
      }
}
