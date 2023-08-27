import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../common/colors.dart';

class TabButton extends StatelessWidget {
  final String icon;
  final String SelectIcon;
  final VoidCallback onTap;
  final bool isActive;

  const TabButton({
    super.key,
    required this.icon,
    required this.SelectIcon,
    required this.isActive,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Column(
        children: [
          SvgPicture.asset(
            isActive ? SelectIcon : icon,
            width: 25,
            height: 25,
            fit: BoxFit.fitWidth,
          ),
          SizedBox(
            height: isActive? 8: 12,
            
          ),
          if (isActive)
          Container(
            width: 4,
            height: 4,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: TColor.secondaryF,
              ),
              borderRadius: BorderRadius.circular(2),
            ),
          )
        ],
      ),
    );
  }
}
