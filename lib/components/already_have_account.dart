import 'package:flutter/material.dart';
import 'package:purple_welcome_screen/constant.dart';
class AlreadyHaveAccount extends StatelessWidget {
  final bool login;
  final Function press2;
  const AlreadyHaveAccount({super.key, this.login = true,  required this.press2});

  @override
  Widget build(BuildContext context) {
    return  Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text(login ?"Dont\'t have an account?": "Already have an account?",style: TextStyle(color: kPrimaryColor),),
        GestureDetector(
            onTap:() => press2,
            child: Text(login ?"Sign Up" : "Sign In", style: TextStyle
              (color: kPrimaryColor,fontWeight: FontWeight.bold),
            )
        )
      ],
    );
  }
}
