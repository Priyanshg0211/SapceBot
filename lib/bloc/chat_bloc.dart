import 'dart:async';
import 'dart:js_interop';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:spacebot/models/chat_message_model.dart';
import 'package:spacebot/repos/chat_repo.dart';

part 'chat_event.dart';
part 'chat_state.dart';

class ChatBloc extends Bloc<ChatEvent, ChatState> {
  ChatBloc() : super(ChatSuccessState(messages: [])) {
    on<ChatGenerateNewTextMessageEvent>(chatGenerateNewTextMessageEvent);
  }

  List<ChatMessageModel> message = [];

  FutureOr<void> chatGenerateNewTextMessageEvent(
      ChatGenerateNewTextMessageEvent event, Emitter<ChatState> emit) async {
    message.add(ChatMessageModel(
        role: "user", parts: [ChatPartModel(text: event.inputMessage)]));
    emit(ChatSuccessState(messages: message));

    await ChatRepo.chatTextGenerationRepo(message);
  }
}
