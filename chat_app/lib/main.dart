import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import './screens/chats.dart';
import './screens/Calls.dart';
import './screens/People.dart';
import './screens/Settings.dart';

void main() async {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CupertinoApp(
      home: HomePage(),
      theme: CupertinoThemeData(
          brightness: Brightness.light, primaryColor: Color(0xFF08C187)),
    );
  }
}

class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);

  var screens = [Chats(), Calls(), People(), Settings()];

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      resizeToAvoidBottomInset: true,
      child: CupertinoTabScaffold(
        tabBar: CupertinoTabBar(
          items: [
            BottomNavigationBarItem(
                label: 'Chats', icon: Icon(CupertinoIcons.chat_bubble_2_fill)),
            BottomNavigationBarItem(
                label: 'Calls', icon: Icon(CupertinoIcons.phone)),
            BottomNavigationBarItem(
                label: 'Person', icon: Icon(CupertinoIcons.person_alt_circle)),
            BottomNavigationBarItem(
                label: 'Settings', icon: Icon(CupertinoIcons.settings_solid)),
          ],
        ),
        tabBuilder: (BuildContext context, int index) {
          return screens[index];
        },
      ),
    );
  }
}
