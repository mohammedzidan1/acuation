import 'package:flutter/material.dart';

import '../../widgets/back_ground.dart';
import '../../widgets/sign_up_forms.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({Key? key}) : super(key: key);

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Background(),
          const SignUpForm(),
        ],
      ),
    );
  }
}
