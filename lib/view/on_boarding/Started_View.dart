import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../../common/colors.dart';
import '../../common_widget/round_button.dart';



class StartedView extends StatefulWidget {

  const StartedView({super.key});

  @override
  State<StartedView> createState() => _StartedViewState();
}

class _StartedViewState extends State<StartedView> {
  bool isChangeColor = false;

  @override
  Widget build(BuildContext context) {
    var media = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Tcolor.white,
      body: Container(
        width: media.width,
        decoration: BoxDecoration(
            gradient: isChangeColor ?LinearGradient(
          colors: Tcolor.PrimaryF,
          begin: Alignment.topLeft,
          end: Alignment.bottomRight): null,
        ),
        child:
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Spacer(),
                Text(
                  'Fitness',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 36,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                Text(
                  'Everybody Can Train',
                  style: TextStyle(
                    color: Tcolor.grey,
                    fontSize: 18,
                  ),
                ),
                Spacer(),
                SafeArea(
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 15, vertical: 20),
                    child: RoundButton(title: 'Get Started', 
                    type: isChangeColor ?   RoundButtonType.textGraident : RoundButtonType.bgGradient,
                    onPressed: () {},)
                  
                ),
                ),
              ],
            )

      ),
    );
  }
}