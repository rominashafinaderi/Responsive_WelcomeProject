import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:purple_welcome_screen/components/Rounded_password_field.dart';
import 'package:purple_welcome_screen/components/already_have_account.dart';
import 'package:purple_welcome_screen/components/rounded_input_field.dart';
import 'package:purple_welcome_screen/constant.dart';
import 'package:purple_welcome_screen/screens/Login/components/background.dart';
import 'package:purple_welcome_screen/screens/SIgnUp/sign_up_screen.dart';
class body2 extends StatelessWidget {
   body2({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return background2
      (child: SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text("LOG IN",
          style: TextStyle(
            fontWeight: FontWeight.bold),
          ),
          SizedBox(height: size.height*0.03,),
          SvgPicture.asset("assets/icons/login.svg",
          height:size.height*0.35,
          ),
          SizedBox(height: size.height*0.03,),

          RoundedInputField(
            hintText: "Your email",
            onChanged: (value){
            },
            validate: (value) {
              if (value == null || value.isEmpty) {
                return 'Please enter your email';
              }else if(!RegExp(r'^([a-zA-Z0-9._%-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,})$').hasMatch(value)){
                return 'email pattern is wrong';
              }
              return null;
            },
          ),
          RoundedPasswordField(
            onchanged: (value){
          },
          ),
          Container(
            margin: EdgeInsets.symmetric(vertical: 10),
            width: size.width*0.8,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(29),
              child: TextButton(
                onPressed: (){
                  // Navigator.push(context, MaterialPageRoute(builder: (context)=>SignUpScreen()));
                },
                style: TextButton.styleFrom(
                  padding: EdgeInsets.symmetric(horizontal: 40,vertical: 20), // Button padding
                  backgroundColor: kPrimaryColor,
                ),
                child: Text("LOG IN",
                  style: TextStyle(
                    color: Colors.white,
                  ),),

              ),
            ),
          ),
          SizedBox(height: size.height*0.03,),
          AlreadyHaveAccount(press2: (){
            Navigator.of(context).pushAndRemoveUntil(MaterialPageRoute(builder: (context) =>
                SignUpScreen()), (Route<dynamic> route) => false);          },)
        ],
      ),
    )
    );
  }
}

