import 'package:flutter/material.dart';

import '../widgets/custom_text.dart';
import '../widgets/custom_textield.dart';
import '../widgets/custom_button.dart';
import '../responsive/responsive.dart';

class CreateRoom extends StatefulWidget {
  static const route = '/create-room';
  const CreateRoom({super.key});

  @override
  State<CreateRoom> createState() => _CreateRoomState();
}

class _CreateRoomState extends State<CreateRoom> {
  final TextEditingController usernameController = TextEditingController();
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
              text: "Create Room",
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
            CustomButton(label: "Create Room", onTap: () {}),
          ],
              ),
            ),
        ),);
  }
}
