import 'package:authentication/utils/text.dart';
import 'package:flutter/material.dart';

class SignUp extends StatelessWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Center(
        child: Padding(
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
              AppText.headingMeduim(
                "First Name",
                color: Colors.black,
              ),
              TextField(
                textInputAction: TextInputAction.search,
                autofocus: true,
                style: const TextStyle(color: Colors.black, fontSize: 18),
                decoration: InputDecoration(
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide:
                            const BorderSide(color: Colors.blue, width: 3)),
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide:
                            const BorderSide(color: Colors.blue, width: 3)),
                    hintText: "Your First Name",
                    hintStyle: const TextStyle(
                      fontSize: 14,
                      // fontWeight: FontWeight.w400,
                      color: Colors.black,
                    ),
                    border: InputBorder.none),
              ),
              const SizedBox(
                height: 5,
              ),
              AppText.headingMeduim(
                "Last Name",
                color: Colors.black,
              ),
              TextField(
                textInputAction: TextInputAction.search,
                autofocus: true,
                style: const TextStyle(color: Colors.black, fontSize: 18),
                decoration: InputDecoration(
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide:
                            const BorderSide(color: Colors.blue, width: 3)),
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide:
                            const BorderSide(color: Colors.blue, width: 3)),
                    hintText: "Your Last Name",
                    hintStyle: const TextStyle(
                      fontSize: 14,
                      // fontWeight: FontWeight.w400,
                      color: Colors.black,
                    ),
                    border: InputBorder.none),
              ),
              const SizedBox(
                height: 5,
              ),
              AppText.headingMeduim(
                "Email",
                color: Colors.black,
              ),
              TextField(
                textInputAction: TextInputAction.search,
                autofocus: true,
                style: const TextStyle(color: Colors.black, fontSize: 18),
                decoration: InputDecoration(
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide:
                            const BorderSide(color: Colors.blue, width: 3)),
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide:
                            const BorderSide(color: Colors.blue, width: 3)),
                    hintText: "Enter Your Email Address",
                    hintStyle: TextStyle(
                      fontSize: 14,
                      // fontWeight: FontWeight.w400,
                      color: Colors.black,
                    ),
                    border: InputBorder.none),
              )
            ],
          ),
        ),
      ),
    ));
  }
}
