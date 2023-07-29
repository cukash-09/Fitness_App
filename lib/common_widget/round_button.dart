import 'package:flutter/material.dart';

import '../common/colors.dart';

enum RoundButtonType { bgGradient, textGraident }

class RoundButton extends StatelessWidget {
  final String title;
  final VoidCallback onPressed;
  final RoundButtonType type;
  const RoundButton(
      {super.key,
      required this.title,
      this.type = RoundButtonType.bgGradient,
      required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(25),
        gradient: LinearGradient(
            colors: Tcolor.PrimaryF,
            begin: Alignment.centerLeft,
            end: Alignment.centerRight),
      ),
      child: MaterialButton(
        onPressed: onPressed,
        height: 50,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(25),
        ),
        textColor: Tcolor.primaryColor1,
        minWidth: double.maxFinite,
        elevation: type == RoundButtonType.bgGradient ? 0 : 1,
        color: type == RoundButtonType.bgGradient
            ? Colors.transparent
            : Tcolor.white,
        child: type == RoundButtonType.bgGradient
            ? Text(
                title,
                style: TextStyle(
                  color: Tcolor.white,
                  fontSize: 18,
                  fontWeight: FontWeight.w700,
                ),
              )
            : ShaderMask(
                blendMode: BlendMode.srcIn,
                shaderCallback: (bounds) {
                  return LinearGradient(
                          colors: Tcolor.PrimaryF,
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
                    color: Tcolor.grey,
                    fontSize: 18,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
      ),
    );
  }
}
