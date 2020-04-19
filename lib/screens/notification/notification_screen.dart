import 'package:flutter/material.dart';
import 'package:fluttersocial/models/data.dart';
import 'package:fluttersocial/screens/notification/feed_bubble.dart';

class NotificationScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        centerTitle: false,
        title: Text(
          'Notification',
          style: TextStyle(
            fontSize: 25.0,
            letterSpacing: 1.5,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Container(
          padding: const EdgeInsets.only(top: 90, left: 5, right: 5),
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                Color(0xff0D5F64),
                Color(0xff219077),
                Color(0xffA5CDCC)
              ])),
          child: Column(
            children: <Widget>[
              Expanded(
                child: ListView.builder(
                  padding: const EdgeInsets.only(bottom: 90),
                  itemBuilder: (context, index) {
                    return Container(
                      padding: const EdgeInsets.symmetric(vertical: 10.0),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          CircleAvatar(
                            radius: 20.0,
                            backgroundImage: NetworkImage(Data.feeds[index].sender.imageUrl),
                          ),
                          FeedBubble(feed: Data.feeds[index],)
                        ],
                      ),
                    );
                  },
                  itemCount: Data.feeds.length,
                ),
              ),
            ],
          )),
    );
  }
}
