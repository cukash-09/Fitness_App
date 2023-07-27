import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../common/colors.dart';

class RoundTextfield extends StatelessWidget {
  final TextEditingController? controller;
  final String hintText;
  final String icon;
  final Widget? rigticon;
  final EdgeInsets? margin;
  final TextInputType? keyboardType;
  final bool obscureText;

  const RoundTextfield(
      {super.key,
      required this.hintText,
      required this.icon,
      this.controller,
      this.keyboardType,
      this.obscureText = false,
      this.rigticon,
      this.margin});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: margin,
      decoration: BoxDecoration(
        color: Tcolor.lightGray,
        borderRadius: BorderRadius.circular(15),
      ),
      child: TextField(
        obscureText: obscureText,
        keyboardType: TextInputType.none,
        controller: controller,
        decoration: InputDecoration(
          contentPadding: EdgeInsets.symmetric(vertical: 15, horizontal: 15),
          enabledBorder: InputBorder.none,
          focusedBorder: InputBorder.none,
          hintText: hintText,
          suffixIcon: rigticon,
          prefixIcon: Container(
            width: 20,
            height: 20,
            alignment: Alignment.center,
            child: SvgPicture.asset(
              icon,
              width: 20,
              height: 20,
              fit: BoxFit.contain,
              color: Tcolor.grey,
            ),
          ),
          hintStyle: TextStyle(color: Tcolor.grey, fontSize: 12),
        ),
      ),
    );
  }
}
