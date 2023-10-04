import 'package:flutter/material.dart';
import 'package:purple_welcome_screen/screens/welcome/component/body.dart';
class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: body(),
    );
  }
}
