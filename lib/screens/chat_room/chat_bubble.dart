import 'package:flutter/material.dart';
import 'package:fluttersocial/models/message_model.dart';

class ChatBubble extends StatelessWidget {
  final bool isMe;
  final bool isContinue;
  final Message message;

  ChatBubble(
      {@required this.isMe, @required this.isContinue, @required this.message});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: <Widget>[
        isMe ? _bubbleEndWidget() : Container(),
        Container(
          padding: const EdgeInsets.all(8),
          margin: const EdgeInsets.symmetric(horizontal: 8),
          decoration: BoxDecoration(
            color: isMe
                ? Theme.of(context).accentColor
                : Theme.of(context).primaryColor,
            borderRadius: isMe
                ? isContinue
                    ? BorderRadius.only(
                        topRight: Radius.circular(20.0),
                        topLeft: Radius.circular(20.0),
                        bottomLeft: Radius.circular(20.0),
                        bottomRight: Radius.circular(20.0),
                      )
                    : BorderRadius.only(
                        topRight: Radius.circular(20.0),
                        topLeft: Radius.circular(20.0),
                        bottomLeft: Radius.circular(20.0),
                      )
                : isContinue
                    ? BorderRadius.only(
                        topRight: Radius.circular(20.0),
                        topLeft: Radius.circular(20.0),
                        bottomLeft: Radius.circular(20.0),
                        bottomRight: Radius.circular(20.0),
                      )
                    : BorderRadius.only(
                        topRight: Radius.circular(20.0),
                        topLeft: Radius.circular(20.0),
                        bottomRight: Radius.circular(20.0),
                      ),
          ),
          constraints: BoxConstraints(
              maxWidth: MediaQuery.of(context).size.width * 0.65,
              minHeight: 30),
          child: Text(
            message.text,
            style: TextStyle(
              color: isMe
                  ? Colors.white
                  : Theme.of(context).brightness == Brightness.light
                      ? Colors.black
                      : Colors.grey,
            ),
          ),
        ),
        isMe ? Container() : _bubbleEndWidget()
      ],
    );
  }

  Widget _bubbleEndWidget() {
    return Column(
      mainAxisAlignment: isMe ? MainAxisAlignment.end : MainAxisAlignment.start,
      crossAxisAlignment:
          isMe ? CrossAxisAlignment.end : CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          message.unread ? '1' : '',
          style: TextStyle(
            color: Colors.amber,
            fontSize: 10,
          ),
        ),
        Text(
          message.time,
          style: TextStyle(
            color: Colors.white,
            fontSize: 10,
          ),
        ),
      ],
    );
  }
}
