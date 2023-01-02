import 'package:flutter/material.dart';

import '../widgets/custom_button.dart';
import '../responsive/responsive.dart';
import './createRoomScreen.dart';
import './joinRoomScreen.dart';

class MainMenu extends StatelessWidget {
  static const route='/main-menu';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Responsive(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CustomButton(label: "Create Room", onTap: (){
              Navigator.of(context).pushNamed(CreateRoom.route);
            }),
            SizedBox(height: 20,),
            CustomButton(label: "Join Room", onTap: (){
              Navigator.of(context).pushNamed(JoinRoom.route);
            }),
          ],
        ),
      )
    );
  }
}
