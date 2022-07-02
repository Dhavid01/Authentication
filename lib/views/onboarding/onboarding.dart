import 'package:authentication/utils/text.dart';
import 'package:authentication/views/auth/sign_in.dart';
import 'package:authentication/views/auth/verify_email.dart';
import 'package:authentication/widgets/app_buttom.dart';
import 'package:flutter/material.dart';

class OnBoardingView extends StatefulWidget {
  const OnBoardingView({Key? key}) : super(key: key);

  @override
  State<OnBoardingView> createState() => _OnBoardingViewState();
}

class _OnBoardingViewState extends State<OnBoardingView> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: GestureDetector(
          onTap: () {
            FocusScope.of(context).unfocus();
          },
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                AppText.heading(
                  "Alaye, choose one sharp",
                  color: Colors.black,
                ),

                AppButtom(
                    onPressed: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const VerifyEmailView())),
                    text: "SIGN UP",
                    icon: Icons.login_outlined),
                const SizedBox(
                  height: 20,
                ),
                AppButtom.outlined(
                    onPressed: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const SignIn())),
                    text: "SIGN IN",
                    icon: Icons.login_outlined),
                const SizedBox(
                  height: 20,
                ),
                // InkWell(
                //   onTap: () => Navigator.pushReplacement(
                //       context,
                //       MaterialPageRoute(
                //         builder: (context) => const ForgotPasswordView(),
                //       )),
                //   child: const FbButton(),
                // )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
