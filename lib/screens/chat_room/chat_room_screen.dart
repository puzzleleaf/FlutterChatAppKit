import 'package:flutter/material.dart';
import 'package:fluttersocial/models/chat_room_model.dart';
import 'package:fluttersocial/models/data.dart';
import 'package:fluttersocial/models/message_model.dart';
import 'package:fluttersocial/screens/chat_room/chat_input.dart';
import 'package:fluttersocial/screens/chat_room/chat_item.dart';
import 'package:fluttersocial/utils/constants.dart';

class ChatRoomScreen extends StatefulWidget {
  @override
  _ChatRoomScreenState createState() => _ChatRoomScreenState();
}

class _ChatRoomScreenState extends State<ChatRoomScreen> {
  @override
  Widget build(BuildContext context) {
    ChatRoom chatRoom = ModalRoute.of(context).settings.arguments;
    List<Message> messages = chatRoom.messages;

    return Scaffold(
      resizeToAvoidBottomInset: false,
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        centerTitle: true,
        title: Row(
          children: <Widget>[
            CircleAvatar(
              backgroundImage: NetworkImage(chatRoom.sender.imageUrl),
              radius: 20.0,
            ),
            SizedBox(
              width: 8,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  chatRoom.sender.name,
                  style: TextStyle(
                    fontSize: 15.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.white
                  ),
                ),
                Text(
                  chatRoom.sender.message,
                  style: TextStyle(
                    fontSize: 10.0,
                    fontWeight: FontWeight.normal,
                    color: Colors.white
                  ),
                ),
              ],
            ),
          ],
        ),
        actions: <Widget>[
          IconButton(
            icon: Icon(
              Icons.more_horiz,
              color: Colors.white,
            ),
          )
        ],
      ),
      body: Container(
        padding: const EdgeInsets.only(top: 80),
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: Theme.of(context).brightness == Brightness.light
                ? Constants.lightBGColors
                : Constants.darkBGColors,
          ),
        ),
        child: Column(
          children: <Widget>[
            Expanded(
              child: Container(
                alignment: Alignment.topCenter,
                padding:
                    const EdgeInsets.only(left: 16.0, right: 16.0, top: 10),
                child: SingleChildScrollView(
                  reverse: true,
                  child: Column(
                    children: <Widget>[
                      for (var index = 0; index < messages.length; index++)
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 10.0),
                          child: ChatItem(
                              message: messages[index],
                              isContinue: index == 0
                                  ? false
                                  : (messages[index - 1].sender ==
                                          messages[index].sender) &&
                                      (messages[index - 1].time ==
                                          messages[index].time)),
                        )
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                  bottom: MediaQuery.of(context).viewInsets.bottom),
              child: ChatInput(
                onPressed: (message) {
                  if (message != null) {
                    setState(() {
                      messages.add(
                        Message(
                          sender: Data.me,
                          text: message,
                          time: '17:35',
                          unread: true,
                        ),
                      );
                    });
                  }
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
