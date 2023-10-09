import 'package:flutter/material.dart';
import 'package:purple_welcome_screen/components/Rounded_Button.dart';
import 'package:purple_welcome_screen/constant.dart';
import 'package:purple_welcome_screen/screens/Login/login_screen.dart';
import 'package:purple_welcome_screen/screens/SIgnUp/sign_up_screen.dart';
import 'package:purple_welcome_screen/screens/welcome/component/background.dart';
import 'package:flutter_svg/svg.dart';

class body extends StatelessWidget {
  const body({super.key});
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return background(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text("LOG IN",
            style:TextStyle(
              fontWeight: FontWeight.bold
            ),
            ),
            SizedBox(height: size.height*0.03,),
            SvgPicture.asset('assets/icons/chat.svg',height: size.height*0.45,),
            SizedBox(height: size.height*0.05,),
            Center
          ],
        ),
      ),

    );
  }
}


