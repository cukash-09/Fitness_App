import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';

import 'page_two.dart';

class PageOne extends StatefulWidget {
  const PageOne({super.key});

  @override
  State<PageOne> createState() => _OnBridingState();
}

class _OnBridingState extends State<PageOne> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Gap(380),
          Center(
            child: SvgPicture.asset(
              'assets/images/Group 10275.svg',
            ),
          ),
          Gap(12),
          Text(
            'Everybody Can Train',
            style: TextStyle(
                fontWeight: FontWeight.w400,
                fontSize: 16,
                color: Color(
                  0xff7B6F72,
                )),
          ),
          Gap(300),
          SizedBox(
            width: 315,
            height: 60,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                foregroundColor: Color(0xff9DCEFF),
                backgroundColor: Color(0xff92A3FD),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
                // Background color
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => PageTwo(),
                  )
                );
              },
              child: const Text(
                'Get Started',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w700,
                  color: Colors.white,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
