import 'package:flutter/material.dart';
import 'package:flutter_fitness_app/view/on_boarding/on_boarding_view.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';

class PageTwo extends StatefulWidget {
  const PageTwo({super.key});

  @override
  State<PageTwo> createState() => _PageTwoState();
}

class _PageTwoState extends State<PageTwo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff92A3FD),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Gap(380),
          Center(
            child: SvgPicture.asset(
              'assets/images/Group 1.svg',
            ),
          ),
          Gap(12),
          Text(
            'Everybody Can Train',
            style: TextStyle(
                fontWeight: FontWeight.w400,
                fontSize: 16,
                color: Color(
                  0xffffffff,
                )),
          ),
          Gap(300),
          SizedBox(
            width: 315,
            height: 60,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => OnBoardingView(),
                  ),
                );
              },
              child: const Text(
                'Get Started',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w700,
                  color: Color(0xff92A3FD),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
