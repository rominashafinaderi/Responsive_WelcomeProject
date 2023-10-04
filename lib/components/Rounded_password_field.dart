import 'package:flutter/material.dart';
import 'package:purple_welcome_screen/components/text_field_container.dart';
import 'package:purple_welcome_screen/constant.dart';
class RoundedPasswordField extends StatefulWidget {
  final ValueChanged<String> onchanged;
  const RoundedPasswordField({super.key, required this.onchanged});

  @override
  State<RoundedPasswordField> createState() => _RoundedPasswordFieldState();
}

class _RoundedPasswordFieldState extends State<RoundedPasswordField> {
  bool passwordVisible=false;

  @override
  void initState() {
    super.initState();
    passwordVisible = true;
  }
  @override
  Widget build(BuildContext context) {
    return  TextFieldContainer(
        child: TextField(
          onChanged: widget.onchanged,
          obscureText:passwordVisible ,
          decoration: InputDecoration(
            hintText: "Password",
            icon: Icon(Icons.lock,color: kPrimaryColor,
            ),
            suffixIcon:IconButton(
              icon: Icon(
                  passwordVisible
                      ? Icons.visibility
                      : Icons.visibility_off,color:kPrimaryColor),
              onPressed: (){
                setState(
                      () {
                    passwordVisible = !passwordVisible;
                  },
                );
              },
            ),
            border: InputBorder.none,
          ),
        )
    )
    ;
  }
}
