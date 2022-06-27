import 'package:authentication/utils/color.dart';
import 'package:authentication/utils/text.dart';
import 'package:authentication/views/auth/sign_in.dart';
import 'package:authentication/widgets/textfieldwidget.dart';
import 'package:flutter/material.dart';

class SignUp extends StatelessWidget {
  const SignUp({Key? key}) : super(key: key);

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
                "Sign Up for An Account",
                color: Colors.black,
                centered: true,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            AppText.captionMedium(
              "Let's get you all set up so you can start creating your first onboarding experience",
              centered: true,
            ),
            const SizedBox(
              height: 10,
            ),
            const TextFieldWidget(
              header: "First Name",
              hintText: "Your First Name",
            ),
            const TextFieldWidget(
              header: "Last Name",
              hintText: "Your Last Name",
            ),
            const TextFieldWidget(
              header: "Email",
              hintText: "Enter Your Email Address",
            ),
            const TextFieldWidget(
              header: "Password",
              hintText: "Enter a strong password",
            ),
            const SizedBox(
              height: 5,
            ),
            Center(
                child: AppText.captionMedium(
                    "I accept dave's Terms and Conditions")),
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
            const SizedBox(
              height: 10,
            ),
            Row(mainAxisAlignment: MainAxisAlignment.center, children: [
              AppText.caption("Already a user?"),
              GestureDetector(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => const SignIn()));
                },
                child: AppText.caption(
                  "Sign in",
                  color: kPrimaryColor,
                ),
              ),
            ])
          ],
        ),
      ),
    ));
  }
}
