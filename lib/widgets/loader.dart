import 'dart:ui';

import 'package:authentication/utils/text.dart';
import 'package:flutter/material.dart';

class Loader extends StatelessWidget {
  Loader({Key? key, required this.isLoading}) : super(key: key);
  bool isLoading;

  @override
  Widget build(BuildContext context) {
    return Visibility(
        visible: isLoading,
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 3, sigmaY: 3),
          child: SizedBox(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            child: Center(
              child: Row(
                children: [
                  AppText.headingMeduim("Please Wait a Moment"),
                  CircularProgressIndicator()
                ],
              ),
            ),
          ),
        ));
  }
}
