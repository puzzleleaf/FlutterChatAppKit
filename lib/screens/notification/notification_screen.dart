import 'package:flutter/material.dart';
import 'package:fluttersocial/models/data.dart';
import 'package:fluttersocial/screens/notification/feed_bubble.dart';
import 'package:fluttersocial/utils/constants.dart';

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
          style: Constants.titleStyle,
        ),
      ),
      body: Container(
          padding: const EdgeInsets.only(top: 90, left: 5, right: 5),
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
                            backgroundImage:
                                NetworkImage(Data.feeds[index].sender.imageUrl),
                          ),
                          FeedBubble(
                            feed: Data.feeds[index],
                          )
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
