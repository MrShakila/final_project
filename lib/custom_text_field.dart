import 'package:flutter/material.dart';

// ignore: must_be_immutable
class CustomTextFild extends StatelessWidget {
  final String title;
  final Icon icon;
  final TextEditingController controller;
  final TextInputType textInputType;
  bool isObscure;
  CustomTextFild(
      {Key? key,
      required this.title,
      required this.icon,
      required this.controller,
      this.isObscure = false,
      required this.textInputType})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.all(10),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            border: Border.all(width: 1.0, color: Colors.black)),
        child: Padding(
          padding: const EdgeInsets.only(left: 10.0, right: 4),
          child: TextFormField(
            keyboardType: textInputType,
            obscureText: isObscure,
            controller: controller,
            decoration: InputDecoration(
                suffix: icon, hintText: title, border: InputBorder.none),
          ),
        ));
  }
}
