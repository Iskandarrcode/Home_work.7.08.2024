import 'package:bloc/bloc.dart';
import 'package:solid_chat_app/logic/blocs/chat_events.dart';
import 'package:solid_chat_app/logic/blocs/chat_states.dart';

class ChatBloc extends Bloc<ChatEvents, ChatStates> {
  ChatBloc() : super(InitialState()) {
    on<GetSmsEvent>(_getSms);
    on<AddSmsEevent>(_addSms);
  }

  void _getSms(GetSmsEvent event, Emitter emit) {}

  void _addSms(AddSmsEevent event, Emitter emit) {}
}
