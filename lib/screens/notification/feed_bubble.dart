import 'package:flutter/material.dart';
import 'package:fluttersocial/models/feed_model.dart';

class FeedBubble extends StatelessWidget {
  final Feed feed;

  const FeedBubble({Key key, this.feed}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 18.0, vertical: 15.0),
        margin: const EdgeInsets.only(left: 10.0, right: 10.0),
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
              topRight: Radius.circular(8.0),
              bottomRight: Radius.circular(8.0),
              bottomLeft: Radius.circular(8.0),
            )),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(feed.message),
            Container(
              margin: const EdgeInsets.symmetric(vertical: 8.0),
              height: 150,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: NetworkImage(feed.imageUrl),
                  fit: BoxFit.cover,
                ),
                borderRadius: BorderRadius.circular(10),
              ),
            ),
            Row(
              children: <Widget>[
                Text(
                  '${feed.time} minute ago',
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 12.0,
                  ),
                ),
                Expanded(
                  child: Container(),
                ),
                Icon(
                  Icons.share,
                  color: Colors.grey,
                  size: 15,
                ),
                SizedBox(width: 5,),
                Text(
                  '${feed.shareCount}',
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 12.0,
                  ),
                ),
                SizedBox(width: 10,),
                Icon(
                  Icons.thumb_up,
                  color: Colors.grey,
                  size: 15,
                ),
                SizedBox(width: 5,),
                Text(
                  '${feed.likeCount}',
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 12.0,
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
