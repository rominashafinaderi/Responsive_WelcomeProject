import 'package:flutter/material.dart';
import 'package:purple_welcome_screen/components/text_field_container.dart';
import 'package:purple_welcome_screen/constant.dart';
class RoundedInputField extends StatelessWidget {
  final String hintText;
  final IconData icon;
  final FormFieldValidator<String> validate;
  final ValueChanged<String> onChanged;
  const RoundedInputField({super.key, required this.hintText, this.icon=Icons.person, required this.onChanged, required this.validate});

  @override
  Widget build(BuildContext context) {
    return   TextFieldContainer(
      child: TextFormField(
        validator:  validate,
        onChanged: onChanged,
        decoration: InputDecoration(
            hintText: hintText,
            icon: Icon(icon,color: kPrimaryColor,),
            border: InputBorder.none
        ),
      ),
    );
  }
}
