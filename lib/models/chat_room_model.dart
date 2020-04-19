import 'package:fluttersocial/models/message_model.dart';
import 'package:fluttersocial/models/user_model.dart';

class ChatRoom {
  final User sender;
  final List<Message> messages;

  ChatRoom({this.sender, this.messages});

}