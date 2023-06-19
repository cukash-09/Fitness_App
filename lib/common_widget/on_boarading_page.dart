import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';

import '../common/colors.dart';

class OnBoardingPage extends StatelessWidget {
  final Map pObj;
  const OnBoardingPage({super.key, required this.pObj});

  @override
  Widget build(BuildContext context) {
     var media = MediaQuery.of(context).size;
    return SizedBox(
                width: media.width,
                height: media.height,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SvgPicture.asset(
                     pObj["image"].toString(),
                      width: media.width,
                      fit: BoxFit.fitWidth,
                    ),
                    Gap(25),
                    
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 15),
                      child: Text(
                         pObj["title"].toString(),
                        style: TextStyle(
                          color: Tcolor.black,
                          fontSize: 24,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),
                     Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 15),
                      child: Text(
                        pObj["subtitle"].toString(),
                        style: TextStyle(
                          color: Tcolor.grey,
                          fontSize: 14,
                          
                        ),
                      ),
                    ),
                  ],
                ),
              );
  }
}