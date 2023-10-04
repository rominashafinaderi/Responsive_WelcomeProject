
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:purple_welcome_screen/components/Rounded_Button.dart';
import 'package:purple_welcome_screen/components/Rounded_password_field.dart';
import 'package:purple_welcome_screen/components/already_have_account.dart';
import 'package:purple_welcome_screen/components/rounded_input_field.dart';
import 'package:purple_welcome_screen/constant.dart';
import 'package:purple_welcome_screen/screens/Login/login_screen.dart';
import 'package:purple_welcome_screen/screens/SIgnUp/components/background.dart';
import 'package:purple_welcome_screen/screens/SIgnUp/components/or_devider.dart';
import 'package:purple_welcome_screen/screens/SIgnUp/components/social_icon.dart';
class body3 extends StatelessWidget {
  const body3({super.key,});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return background3(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
         children: <Widget>[
           Text("SIGN UP",
             style: TextStyle(
              fontWeight: FontWeight.bold
           ),
           ),
           SizedBox(height: size.height*0.035,),
           SvgPicture.asset('assets/icons/signup.svg',
           height:size.height*0.35,
           ),
           RoundedInputField(
               validate: (value) {
                 if (value == null || value.isEmpty) {
                   return 'Please enter your email';
                 }else if(!RegExp(r'^([a-zA-Z0-9._%-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,})$').hasMatch(value)){
                   return 'email pattern is wrong';
                 }
                 return null;
               },
               hintText: "Your email", onChanged: (value){}

           ),
           RoundedPasswordField(onchanged: (value){}),
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
                 child: Text("SIGN UP",
                   style: TextStyle(
                     color: Colors.white,
                   ),),

               ),
             ),
           ),           SizedBox(height: size.height*0.035,),
           AlreadyHaveAccount(press2: (){
             Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context) => loginScreen()), (route) => false);
           },
           login: false,),
           orDevider(),
           Row(
             mainAxisAlignment: MainAxisAlignment.center,
             children:<Widget> [
               socialIcon(IconSrc: 'assets/icons/facebook.svg', press: (){}),
               socialIcon(IconSrc: 'assets/icons/twitter.svg', press: (){}),
               socialIcon(IconSrc: 'assets/icons/google-plus.svg', press: (){}),

             ],
           )
           
         ],
    ),
      ),
    );
  }
}
