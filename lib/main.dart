import 'package:flutter/material.dart';

import './utils/colors.dart';
import './screens/main_menuScreen.dart';
import './screens/createRoomScreen.dart';
import './screens/joinRoomScreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData.dark().copyWith(scaffoldBackgroundColor: bgColor),
      home: MainMenu(),
      routes: {
        MainMenu.route: (ctx) => MainMenu(),
        CreateRoom.route: (ctx) => CreateRoom(),
        JoinRoom.route: (ctx) => JoinRoom(),
      },
    );
  }
}
