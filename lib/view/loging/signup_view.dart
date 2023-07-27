import 'package:flutter/material.dart';
import 'package:flutter_fitness_app/common_widget/round_button.dart';
import 'package:flutter_fitness_app/common_widget/round_textfield.dart';
import 'package:flutter_svg/svg.dart';

import '../../common/colors.dart';

class SignupView extends StatefulWidget {
  const SignupView({super.key});

  @override
  State<SignupView> createState() => _SignupViewState();
}

class _SignupViewState extends State<SignupView> {
  bool isCheck = false;
  @override
  Widget build(BuildContext context) {
    var media = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Tcolor.white,
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  'Hey there,',
                  style: TextStyle(
                    color: Tcolor.grey,
                    fontSize: 16,
                  ),
                ),
                Text(
                  'Create am Account',
                  style: TextStyle(
                    color: Tcolor.black,
                    fontSize: 20,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                SizedBox(height: media.width * 0.05),
                RoundTextfield(
                  hintText: 'First Name',
                  icon: "assets/images/Profile.svg",
                ),
                SizedBox(height: media.width * 0.05),
                RoundTextfield(
                  hintText: 'Last Name',
                  icon: "assets/images/Profile.svg",
                ),
                SizedBox(height: media.width * 0.05),
                RoundTextfield(
                  hintText: 'Email',
                  icon: "assets/images/Message.svg",
                  keyboardType: TextInputType.emailAddress,
                ),
                SizedBox(height: media.width * 0.05),
                RoundTextfield(
                  hintText: 'Password',
                  icon: "assets/images/Lock.svg",
                  obscureText: true,
                  rigticon: TextButton(
                    onPressed: () {},
                    child: Container(
                      width: 20,
                      height: 20,
                      alignment: Alignment.center,
                      child: SvgPicture.asset(
                        'assets/images/Hide.svg',
                        width: 20,
                        height: 20,
                        fit: BoxFit.contain,
                        color: Tcolor.grey,
                      ),
                    ),
                  ),
                ),
                Row(
                  children: [
                    IconButton(
                      onPressed: () {
                        setState(() {
                          isCheck = !isCheck;
                        });
                      },
                      icon: Icon(
                        isCheck
                            ? Icons.check_box_outlined
                            : Icons.check_box_outline_blank_outlined,
                        color: Tcolor.grey,
                        size: 20,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 8),
                      child: Expanded(
                        child: Text(
                          'By continuing you accept our Privacy Policy and\n Term of Use',
                          style: TextStyle(
                            color: Tcolor.grey,
                            fontSize: 10,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: media.width * 0.4),
                RoundButton(
                  title: "register",
                  onPressed: () {},
                ),
                SizedBox(height: media.width * 0.04),
                Row(
                  children: [
                    Expanded(
                      child: Container(
                        height: 1,
                        color: Tcolor.grey.withOpacity(0.5),
                      ),
                    ),
                    Text(
                      '   Or   ',
                      style: TextStyle(
                        color: Tcolor.black,
                        fontSize: 12,
                      ),
                    ),
                    Expanded(
                      child: Container(
                        height: 1,
                        color: Tcolor.grey.withOpacity(0.5),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: media.width * 0.04,
                ),
                SizedBox(
                  height: media.width * 0.04,
                ),
                TextButton(
                    onPressed: () {},
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(
                          'Already have an account?',
                          style: TextStyle(
                            color: Tcolor.black,
                            fontSize: 14,
                          ),
                        ),
                        Text(
                          ' Login',
                          style: TextStyle(
                            color: Tcolor.black,
                            fontSize: 14,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ],
                    ))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
