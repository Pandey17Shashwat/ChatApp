import 'package:chat_app/screens/login/EditNumber.dart';
import 'package:chat_app/screens/login/Hello.dart';
import 'package:chat_app/screens/login/SelectCountry.dart';
import 'package:cloud_firestore/cloud_firestore.dart' as a;
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'dart:io';
import './screens/chats.dart';
import './screens/Calls.dart';
import './screens/People.dart';
import './screens/Settings.dart';

const bool USE_EMULATOR = false;
Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  if (USE_EMULATOR) {
    _connectToFirebaseEmulator();
  }
  runApp(MyApp());
}

Future _connectToFirebaseEmulator() async {
  final fireStorePort = "8080";
  final authPort = "9099";
  final localHost = Platform.isAndroid ? '10.0.2.2' : 'localhost';
  a.FirebaseFirestore.instance.settings = a.Settings(
      host: "$localHost:$fireStorePort",
      sslEnabled: false,
      persistenceEnabled: false);
  await FirebaseAuth.instance.useEmulator("http://$localHost:$authPort");
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CupertinoApp(
      home: Hello(),
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
