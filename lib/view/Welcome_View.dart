import 'package:flutter/material.dart';
import 'package:flutter_fitness_app/common/colors.dart';
import 'package:flutter_fitness_app/view/login/login_view.dart';
import 'package:flutter_fitness_app/view/main_tab/main_tab.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../common_widget/round_button.dart';

class WelcomeView extends StatefulWidget {
  const WelcomeView({super.key});

  @override
  State<WelcomeView> createState() => _WelcomeViewState();
}

class _WelcomeViewState extends State<WelcomeView> {
  @override
  Widget build(BuildContext context) {
    var media = MediaQuery.of(context).size;
    return Scaffold(
        backgroundColor: TColor.white,
        body: SafeArea(
            child: Container(
          padding: EdgeInsets.symmetric(
            vertical: 15,
            horizontal: 25,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisSize: MainAxisSize.max,
            children: [
              SvgPicture.asset(
                'assets/images/welcome.svg',
                width: media.width,
              ),
              SizedBox(
                height: media.width * 0.05,
              ),
              Text(
                "What is your goal ?",
                style: TextStyle(
                  color: TColor.black,
                  fontSize: 20,
                  fontWeight: FontWeight.w700,
                ),
              ),
              Text(
                'It will help us to choose a best\n program for you!',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: TColor.grey,
                  fontSize: 12,
                ),
              ),
              Spacer(),
              RoundButton(
                title: "Go To Home",
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => MainTab(),
                    ),
                  );
                },
                fontWeight: FontWeight.bold,
              ),
            ],
          ),
        )));
  }
}
