import 'package:flutter/material.dart';
import 'package:purple_welcome_screen/constant.dart';
import 'package:purple_welcome_screen/screens/welcome/component/background.dart';
class RoundedButton extends StatelessWidget {
  final String text;
  final Function press;
  final color,textColor;
  final background;
  const RoundedButton({super.key, required this.text, required this.press, this.color =kPrimaryColor, this.textColor= Colors.white, this.background});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10),
      width: size.width*0.8,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(29),
        child: TextButton(
          onPressed: () {
            press;
          },
          style: TextButton.styleFrom(
            padding: EdgeInsets.symmetric(horizontal: 40,vertical: 20), // Button padding
            backgroundColor: background,
          ),
          child: Text(text,
            style: TextStyle(
              color: textColor,
            ),),
        ),
      ),
    );
  }
}
