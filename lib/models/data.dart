import 'package:fluttersocial/models/user_model.dart';

import 'chat_room_model.dart';
import 'feed_model.dart';
import 'message_model.dart';

class Data {
  static final User lukas = User(
      id: 213921840,
      name: 'Lukas',
      imageUrl:
      'https://images.unsplash.com/photo-1497551060073-4c5ab6435f12?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=400&q=80',
      message: 'Hello World!');

  static final User tom = User(
      id: 213921841,
      name: 'Tom',
      imageUrl:
      'https://images.unsplash.com/photo-1570295999919-56ceb5ecca61?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=400&q=80',
      message: 'Hello World!');

  static final User neo = User(
      id: 213921842,
      name: "Neo",
      imageUrl:
      'https://images.unsplash.com/photo-1518806118471-f28b20a1d79d?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=400&q=60',
      message: 'Good Day!');

  static final User bird = User(
      id: 213921843,
      name: "Bird",
      imageUrl:
      'https://images.unsplash.com/photo-1522778147829-047360bdc7f6?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=658&q=80',
      message: 'Cheep Cheep!');

  static final User dog = User(
      id: 213921844,
      name: "Dog",
      imageUrl:
      'https://images.unsplash.com/photo-1537151608828-ea2b11777ee8?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=339&q=80',
      message: 'Bark Bark');

  static final User me = lukas;

  static List<ChatRoom> chatRooms = [
    ChatRoom(sender: dog, messages: chat4),
    ChatRoom(sender: bird, messages: chat3),
    ChatRoom(sender: neo, messages: chat2),
    ChatRoom(sender: tom, messages: chat1),
  ];

  static List<Message> chat1 = [
    Message(
      sender: lukas,
      time: '17:00',
      text: 'blah blah blah blah?',
      unread: false,
    ),
    Message(
      sender: tom,
      time: '17:01',
      text: 'blah?',
      unread: false,
    ),
    Message(
      sender: tom,
      time: '17:01',
      text: 'blah ...',
      unread: false,
    ),
    Message(
      sender: tom,
      time: '17:01',
      text: 'blah blah blah blah blah\n blah blah?',
      unread: false,
    ),
    Message(
      sender: lukas,
      time: '17:05',
      text: 'blah!!',
      unread: false,
    ),
    Message(
      sender: tom,
      time: '17:06',
      text:
      'blah blah blah blahblahblahblahblahblah blahblahblahblahblahblahblahblahblahblahblahblahblahblahblahblahblah',
      unread: false,
    ),
    Message(
      sender: lukas,
      time: '17:07',
      text: '...',
      unread: false,
    ),
    Message(
      sender: tom,
      time: '17:08',
      text: 'blah?',
      unread: false,
    ),
    Message(
      sender: lukas,
      time: '17:09',
      text: 'blah!! blah :)',
      unread: false,
    ),
  ];

  static List<Message> chat2 = [
    Message(
      sender: neo,
      time: '17:30',
      text: 'Hey, how\'s it going? What did you do today?',
      unread: false,
    ),
    Message(
      sender: lukas,
      time: '17:31',
      text: 'Hey~',
      unread: true,
    ),
  ];

  static List<Message> chat3 = [
    Message(
      sender: bird,
      time: '17:30',
      text: 'cheep cheep~',
      unread: false,
    ),
    Message(
      sender: bird,
      time: '17:31',
      text: 'cheep cheep!!',
      unread: false,
    ),
    Message(
      sender: bird,
      time: '17:32',
      text: 'cheep :(',
      unread: false,
    ),
  ];

  static List<Message> chat4 = [
    Message(
      sender: dog,
      time: '17:55',
      text: 'bark bark!',
      unread: false,
    ),
    Message(
      sender: me,
      time: '17:56',
      text: 'what?',
      unread: false,
    ),
  ];

  static List<Feed> feeds = [
    Feed(
      sender: bird,
      message: 'Photo by Richard Brutyo on Unsplash',
      imageUrl:
      'https://images.unsplash.com/photo-1552053831-71594a27632d?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=312&q=80',
      time: '1',
      shareCount: 1,
      likeCount: 5,
    ),
    Feed(
      sender: neo,
      message: 'Photo by Alex Iby on Unsplash',
      imageUrl:
      'https://images.unsplash.com/photo-1507503343980-19961fa0ca17?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=400&q=60',
      time: '5',
      shareCount: 10,
      likeCount: 5,
    ),
    Feed(
      sender: tom,
      message: 'Photo by reza shayestehpour on Unsplash',
      imageUrl:
      'https://images.unsplash.com/photo-1428592953211-077101b2021b?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=400&q=80',
      time: '20',
      shareCount: 20,
      likeCount: 55,
    )
  ];
}