import 'package:flutter/material.dart';
import 'package:flutter_fitness_app/view/Welcome_View.dart';
import 'package:flutter_fitness_app/view/login/complete_profile.dart';
import 'package:flutter_fitness_app/view/main_tab/main_tab.dart';
import 'package:flutter_svg/svg.dart';

import '../../common/colors.dart';
import '../../common_widget/round_button.dart';
import '../../common_widget/round_textfield.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    var media = MediaQuery.of(context).size;
    return Scaffold(
        backgroundColor: TColor.white,
        body: SafeArea(
          child: Container(
            width: media.width,
            padding: EdgeInsets.symmetric(
              horizontal: 25,
            ),
            child: Column(
              children: [
                SizedBox(height: media.width * 0.05),
                Text(
                  'Hey There,',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 14,
                  ),
                ),
                Text(
                  'Welcome Back!',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 14,
                      fontWeight: FontWeight.bold),
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
                        color: TColor.grey,
                      ),
                    ),
                  ),
                ),
                SizedBox(height: media.width * 0.05),
                Text(
                  'Forgot your password',
                  style: TextStyle(
                    color: Colors.grey.shade600,
                  ),
                ),
                Container(
                  height: 1,
                  width: 150,
                  color: Colors.grey.shade200,
                ),
                SizedBox(height: media.width * 0.80),
                RoundButton(
                  title: " Login >",
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Complete_Profile(),
                      ),
                    );
                  },
                  fontWeight: FontWeight.w100,
                ),
                SizedBox(
                  height: media.width * 0.04,
                ),
                Row(
                  children: [
                    Expanded(
                      child: Container(
                        height: 1,
                        color: TColor.grey.withOpacity(0.5),
                      ),
                    ),
                    Text(
                      '   Or   ',
                      style: TextStyle(
                        color: TColor.black,
                        fontSize: 12,
                      ),
                    ),
                    Expanded(
                      child: Container(
                        height: 1,
                        color: TColor.grey.withOpacity(0.5),
                      ),
                    ),
                    SizedBox(
                      height: media.width * 0.04,
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    GestureDetector(
                      onTap: () {},
                      child: Container(
                        width: 50,
                        height: 50,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          color: TColor.white,
                          border: Border.all(
                            width: 1,
                            color: TColor.grey.withOpacity(0.5),
                          ),
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: SvgPicture.asset(
                          'assets/images/1534129544.svg',
                          width: 20,
                          height: 20,
                        ),
                      ),
                    ),
                    SizedBox(
                      width: media.width * 0.10,
                    ),
                    GestureDetector(
                      onTap: () {},
                      child: Container(
                        width: 50,
                        height: 50,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          color: TColor.white,
                          border: Border.all(
                            width: 1,
                            color: TColor.grey.withOpacity(0.5),
                          ),
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: SvgPicture.asset(
                          'assets/images/fecabook.svg',
                          width: 20,
                          height: 20,
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: media.width * 0.04,
                ),
                TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Complete_Profile(),
                      ),
                    );
                  },
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        'Already have an account?',
                        style: TextStyle(
                          color: TColor.black,
                          fontSize: 14,
                        ),
                      ),
                      Text(
                        ' register',
                        style: TextStyle(
                          color: Color(0xffEEA4CE),
                          fontSize: 14,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
