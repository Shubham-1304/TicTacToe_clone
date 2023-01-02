import 'package:flutter/material.dart';

import '../widgets/custom_text.dart';
import '../widgets/custom_textield.dart';
import '../widgets/custom_button.dart';
import '../responsive/responsive.dart';

class JoinRoom extends StatefulWidget {
  static const route='/join-room';
  const JoinRoom({super.key});

  @override
  State<JoinRoom> createState() => _JoinRoomState();
}

class _JoinRoomState extends State<JoinRoom> {
  final TextEditingController? usernameController=TextEditingController();
  final TextEditingController roomIdController=TextEditingController();
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
        body: Responsive(
          child: Container(
              margin: EdgeInsets.symmetric(
          horizontal: 20,
              ),
              child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CustomText(
              fontSize: 70,
              shadow: [BoxShadow(
                color: Colors.blue,
                blurRadius: 20,
                // spreadRadius: 200,
              )],
              text: "Join Room",
            ),
            SizedBox(
              height: size.height * 0.08,
            ),
            CustomTextField(
              controller: usernameController,
              hintText: "Enter your game name",
            ),
            SizedBox(
              height: size.height * 0.04,
            ),
            CustomTextField(
              controller: roomIdController,
              hintText: "Enter room Id",
            ),
            SizedBox(
              height: size.height * 0.04,
            ),
            CustomButton(label: "Join Room", onTap: () {}),
          ],
              ),
            ),
        ));
  }
}