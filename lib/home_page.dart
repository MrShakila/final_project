import 'package:final_project/custom_text_field.dart';
import 'package:final_project/util_functions.dart';
import 'package:flutter/material.dart';

import 'homepage.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final emailcontroller = TextEditingController();
    final passwordcontroller = TextEditingController();
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CustomTextFild(
                title: "Email",
                icon: const Icon(Icons.email),
                controller: emailcontroller,
                textInputType: TextInputType.emailAddress),
            CustomTextFild(
                title: "Password",
                isObscure: true,
                icon: const Icon(
                  Icons.lock,
                ),
                controller: passwordcontroller,
                textInputType: TextInputType.visiblePassword),
            ElevatedButton(
                onPressed: () {
                  UtilFunctions.navigateTo(context, HomePage());
                },
                child: const Text("Log In"))
          ],
        ),
      ),
    );
  }
}
