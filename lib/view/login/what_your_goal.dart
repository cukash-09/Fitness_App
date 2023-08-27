import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_fitness_app/view/Welcome_View.dart';
import 'package:flutter_fitness_app/view/login/login_view.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../common/colors.dart';
import '../../common_widget/round_button.dart';

class WhatYourGoal extends StatefulWidget {
  const WhatYourGoal({super.key});

  @override
  State<WhatYourGoal> createState() => _WhatYourGoalState();
}

class _WhatYourGoalState extends State<WhatYourGoal> {
  CarouselController buttonCarouselController = CarouselController();
  List goalArr = [
    {
      "image": "assets/images/goal_1.svg",
      "title": "Improve Shape",
      "subtitle":
          "I have a low amount of body fat\n and need / want to build more\n muscle"
    },
    {
      "image": "assets/images/goal_2.svg",
      "title": "Improve Shape",
      "subtitle":
          "I have a low amount of body fat\n and need / want to build more\n muscle"
    },
    {
      "image": "assets/images/goal_3.svg",
      "title": "Improve Shape",
      "subtitle":
          "I have a low amount of body fat\n and need / want to build more\n muscle"
    },
  ];
  @override
  Widget build(BuildContext context) {
    var media = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: TColor.white,
      body: SafeArea(
        child: Stack(
          children: [
            Center(
              child: CarouselSlider(
                items: goalArr
                    .map(
                      (gObj) => Container(
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            colors: TColor.PrimaryF,
                            begin: Alignment.topLeft,
                            end: Alignment.bottomRight,
                          ),
                          borderRadius: BorderRadius.circular(25),
                        ),
                        padding: EdgeInsets.symmetric(
                            vertical: media.width * 0.1, horizontal: 25),
                        child: FittedBox(
                          child: Column(
                            children: [
                              SvgPicture.asset(
                                gObj['image'].toString(),
                                width: media.width * 0.5,
                                fit: BoxFit.fitWidth,
                              ),
                              SizedBox(height: media.width * 0.1),
                              Text(
                                gObj['title'].toString(),
                                style: TextStyle(
                                  color: TColor.white,
                                  fontSize: 14,
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                              SizedBox(height: media.width * 0.01),
                              Container(
                                width: 80,
                                height: 1,
                                color: Colors.white,
                              ),
                              SizedBox(height: media.width * 0.05),
                              Text(
                                gObj['subtitle'].toString(),
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: TColor.white,
                                  fontSize: 12,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    )
                    .toList(),
                carouselController: buttonCarouselController,
                options: CarouselOptions(
                  autoPlay: false,
                  enlargeCenterPage: true,
                  viewportFraction: 0.7,
                  aspectRatio: 0.74,
                  initialPage: 0,
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(
                horizontal: 25,
                vertical: 15,
              ),
              width: media.width,
              child: Column(
                children: [
                  SizedBox(height: media.width * 0.05),
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
                  SizedBox(height: media.width * 0.05),
                  RoundButton(
                    title: "Confirm >",
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => WelcomeView(),
                        ),
                      );
                    },
                    fontWeight: FontWeight.normal,
                  ),
                  SizedBox(height: media.width * 0.05),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
