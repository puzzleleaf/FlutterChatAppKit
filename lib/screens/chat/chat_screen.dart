import 'package:flutter/material.dart';
import 'package:fluttersocial/models/chat_room_model.dart';
import 'package:fluttersocial/models/data.dart';
import 'package:fluttersocial/screens/chat/chat_room_list_item.dart';
import 'package:fluttersocial/screens/utils/constants.dart';

class ChatScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        centerTitle: false,
        elevation: 0.0,
        title: Text(
          'Chat',
          style: TextStyle(
            fontSize: 25.0,
            letterSpacing: 1.5,
            fontWeight: FontWeight.bold,
          ),
        ),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.add_circle_outline),
            color: Colors.white,
            iconSize: 30.0,
            onPressed: () {},
          )
        ],
      ),
      body: Container(
        padding: const EdgeInsets.only(top: 90),
        decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
              Color(0xff0D5F64),
              Color(0xff219077),
              Color(0xffA5CDCC)
            ])),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30),
          child: Column(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 10),
                child: TextFormField(
                  autofocus: false,
                  onChanged: (v) {},
                  decoration: InputDecoration(
                    focusColor: Colors.white,
                    prefixIcon: Icon(
                      Icons.search,
                      color: Colors.grey,
                    ),
                    hintText: 'Search',
                    filled: true,
                    fillColor: Colors.white,
                    enabledBorder: Constants.border,
                    disabledBorder: Constants.border,
                    border: Constants.border,
                    errorBorder: Constants.border,
                    focusedErrorBorder: Constants.border,
                    focusedBorder: Constants.border,
                  ),
                ),
              ),
              Expanded(
                child: ListView.builder(
                  padding: const EdgeInsets.only(bottom: 80),
                  itemBuilder: (context, index) {
                    return GestureDetector(
                        onTap: () {
                          Navigator.pushNamed(context, '/chatRoom',
                              arguments: Data.chatRooms[index]);
                        },
                        child: ChatRoomListItem(
                          chatRoom: Data.chatRooms[index],
                        ));
                  },
                  itemCount: Data.chatRooms.length,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
