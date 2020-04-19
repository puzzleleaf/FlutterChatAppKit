import 'package:fluttersocial/models/user_model.dart';

class Feed {
  final User sender;
  final String message;
  final String imageUrl;
  final String time;
  final int shareCount;
  final int likeCount;

  Feed({this.sender, this.message, this.imageUrl, this.time, this.shareCount, this.likeCount});
}