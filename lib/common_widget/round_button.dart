import 'package:flutter/material.dart';

import '../common/colors.dart';

enum RoundButtonType { bgGradient, bgSGradient, textGradient }

class RoundButton extends StatelessWidget {
  final String title;
  final VoidCallback onPressed;
  final RoundButtonType type;
  final double fontSize;
  final FontWeight fontWight;

  const RoundButton(
      {super.key,
      required this.title,
      this.type = RoundButtonType.bgGradient,
      this.fontSize = 16,
      this.fontWight = FontWeight.w100,
      required this.onPressed,
      required FontWeight fontWeight});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(25),
        gradient: LinearGradient(
          colors: type == RoundButtonType.bgSGradient
              ? TColor.secondaryF
              : TColor.PrimaryF,
          // begin: Alignment.centerLeft,
          // end: Alignment.centerRight,
        ),
        boxShadow: type == RoundButtonType.bgGradient ||
                type == RoundButtonType.bgSGradient
            ? [
                BoxShadow(
                  color: Colors.black26,
                  blurRadius: 0.5,
                  offset: Offset(0, 0.5),
                ),
              ]
            : null,
      ),
      child: MaterialButton(
        onPressed: onPressed,
        height: 50,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(25),
        ),
        textColor: TColor.primaryColor1,
        minWidth: double.maxFinite,
        elevation: type == RoundButtonType.bgGradient ||
                type == RoundButtonType.bgSGradient
            ? 0
            : 1,
        color: type == RoundButtonType.bgGradient ||
                type == RoundButtonType.bgSGradient
            ? Colors.transparent
            : TColor.white,
        child: type == RoundButtonType.bgGradient ||
                type == RoundButtonType.bgSGradient
            ? Text(
                title,
                style: TextStyle(
                  color: TColor.white,
                  fontSize: fontSize,
                  fontWeight: fontWight,
                ),
              )
            : ShaderMask(
                blendMode: BlendMode.srcIn,
                shaderCallback: (bounds) {
                  return LinearGradient(
                          colors: TColor.PrimaryF,
                          begin: Alignment.centerLeft,
                          end: Alignment.centerRight)
                      .createShader(
                    Rect.fromLTRB(
                      0,
                      0,
                      bounds.width,
                      bounds.height,
                    ),
                  );
                },
                child: Text(
                  title,
                  style: TextStyle(
                    color: TColor.grey,
                    fontSize: fontSize,
                    fontWeight: fontWight,
                  ),
                ),
              ),
      ),
    );
  }
}
