import 'package:authentication/utils/color.dart';
import 'package:authentication/utils/text.dart';
import 'package:authentication/widgets/textfieldwidget.dart';
import 'package:flutter/material.dart';

class SignIn extends StatelessWidget {
  const SignIn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: AppText.heading(
                "Log in to Your Account",
                color: Colors.black,
                centered: true,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            AppText.captionMedium(
              "Log in to your account to read and enjoy information from all over the globe all at the comfort of your phoone",
              centered: true,
            ),
            const SizedBox(
              height: 10,
            ),
            const TextFieldWidget(
                header: "Email", hintText: "Enter Your Email Address"),
            const TextFieldWidget(
                header: "Password", hintText: "Enter Your Password"),
            const SizedBox(
              height: 10,
            ),
            AppText.captionMedium(
              "Forgot Password",
              color: Colors.blue,
            ),
            const SizedBox(
              height: 10,
            ),
            Center(
              child: Container(
                height: MediaQuery.of(context).size.height * (0.2 / 3),
                width: MediaQuery.of(context).size.width * (2.4 / 3),
                decoration: BoxDecoration(
                    color: kPrimaryColor,
                    borderRadius: BorderRadius.circular(10)),
                child: Center(
                  child: AppText.captionMedium(
                    "Sign Up",
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    ));
  }
}
