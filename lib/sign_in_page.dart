import 'package:auth_crud/google_auth.dart';
import 'package:flutter/material.dart';

import 'custom_button.dart';

class SignInPage extends StatelessWidget {
  const SignInPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: CustomButton(
        title: "Google Auth",
        onTap: () => GoogleAuth().signIn(context),
      )),
    );
  }
}
