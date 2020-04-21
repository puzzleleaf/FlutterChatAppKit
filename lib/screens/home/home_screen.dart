import 'package:flutter/material.dart';
import 'package:fluttersocial/screens/chat/chat_screen.dart';
import 'package:fluttersocial/screens/notification/notification_screen.dart';
import 'package:fluttersocial/screens/profile/profile_screen.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _page = 0;
  PageController _pageController = PageController(
    initialPage: 0,
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      bottomNavigationBar: ClipRRect(
        borderRadius: BorderRadius.only(
          topRight: Radius.circular(45),
          topLeft: Radius.circular(45),
        ),
        child: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          backgroundColor: Theme.of(context).primaryColor,
          currentIndex: _page,
          onTap: (idx) {
            _pageController.jumpToPage(idx);
          },
          items: [
            BottomNavigationBarItem(
              icon: Icon(
                Icons.message,
                color: Colors.grey,
              ),
              activeIcon: Icon(
                Icons.message,
                color: Theme.of(context).accentColor,
              ),
              title: Container(
                height: 0.0,
              ),
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.notifications,
                color: Colors.grey,
              ),
              activeIcon: Icon(
                Icons.notifications,
                color: Theme.of(context).accentColor,
              ),
              title: Container(
                height: 0.0,
              ),
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.account_circle,
                color: Colors.grey,
              ),
              activeIcon: Icon(
                Icons.account_circle,
                color: Theme.of(context).accentColor,
              ),
              title: Container(
                height: 0.0,
              ),
            )
          ],
        ),
      ),
      body: PageView(
        physics: NeverScrollableScrollPhysics(),
        controller: _pageController,
        onPageChanged: (idx) {
          setState(() {
            _page = idx;
          });
        },
        children: <Widget>[
          ChatScreen(),
          NotificationScreen(),
          ProfileScreen(),
        ],
      ),
    );
  }
}
