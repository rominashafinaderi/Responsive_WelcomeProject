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
            Text("WELCOME TO EDU",
            style:TextStyle(
              fontWeight: FontWeight.bold
            ),
            ),
            SizedBox(height: size.height*0.03,),
            SvgPicture.asset('assets/icons/chat.svg',height: size.height*0.45,),
            SizedBox(height: size.height*0.05,),
            Container(
              margin: EdgeInsets.symmetric(vertical: 10),
              width: size.width*0.8,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(29),
                child: TextButton(
                    onPressed: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>loginScreen()));
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
            Container(
              margin: EdgeInsets.symmetric(vertical: 10),
              width: size.width*0.8,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(29),
                child: TextButton(
                  onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>SignUpScreen()));
                  },
                  style: TextButton.styleFrom(
                    padding: EdgeInsets.symmetric(horizontal: 40,vertical: 20), // Button padding
                    backgroundColor: kPrimaryBackgroundColor,
                  ),
                  child: Text("SIGN UP",
                    style: TextStyle(
                      color: Colors.black,
                    ),),

                ),
              ),
            )
            // RoundedButton(
            //   text: "LOG IN",
            //   background: kPrimaryColor,
            //   press: (){
            //     Navigator.push(context, MaterialPageRoute(builder: (context)=>  loginScreen()));
            //   },
            // ),
            // RoundedButton(
            //   text: "SIGN UP",
            //   press: (){
            //     Navigator.of(context).push(MaterialPageRoute(builder: (context)=> const SignUpScreen()));
            //   },
            //   textColor: Colors.black,
            //   background: kPrimaryBackgroundColor,
            // ),
          ],
        ),
      ),

    );
  }
}


