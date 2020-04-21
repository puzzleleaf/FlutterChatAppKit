import 'package:flutter/material.dart';
import 'package:fluttersocial/screens/chat_room/chat_room_screen.dart';
import 'package:fluttersocial/screens/home/home_screen.dart';
import 'package:fluttersocial/screens/utils/constants.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Social',
      debugShowCheckedModeBanner: false,
      theme: Constants.darkTheme,
      initialRoute: '/',
      routes: {
        '/': (context) => HomeScreen(),
        '/chatRoom': (context) => ChatRoomScreen()
      },
    );
  }
}
