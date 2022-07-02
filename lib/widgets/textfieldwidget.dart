import 'package:authentication/utils/color.dart';
import 'package:flutter/material.dart';

import '../utils/text.dart';

class TextFieldWidget extends StatelessWidget {
  TextFieldWidget(
      {Key? key,
      required this.header,
      required this.hintText,
       this.type,
       this.controller})
      : super(key: key);
  final String header;
  final String hintText;
  String?type;
  TextEditingController ?controller;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        AppText.headingMeduim(
          header,
          color: Colors.black,
        ),
        TextField(
          controller: controller,
          textInputAction: TextInputAction.search,
          autofocus: true,
          style: const TextStyle(color: Colors.black, fontSize: 18),
          decoration: InputDecoration(
              focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide:
                      const BorderSide(color: kPrimaryLightColor, width: 3)),
              enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide:
                      const BorderSide(color: kPrimaryLightColor, width: 3)),
              hintText: hintText,
              hintStyle: TextStyle(
                fontSize: 14,
                // fontWeight: FontWeight.w400,
                color: Colors.black.withOpacity(0.6),
              ),
              border: InputBorder.none),
        ),
        const SizedBox(
          height: 5,
        ),
      ],
    );
  }
}
