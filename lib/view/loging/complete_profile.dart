import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../common/colors.dart';
import '../../common_widget/round_button.dart';
import '../../common_widget/round_textfield.dart';

class Complete_Profile extends StatefulWidget {
  const Complete_Profile({super.key});

  @override
  State<Complete_Profile> createState() => _Complete_ProfileState();
}

class _Complete_ProfileState extends State<Complete_Profile> {
  TextEditingController txtDate = TextEditingController();
  @override
  Widget build(BuildContext context) {
    var media = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Tcolor.white,
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: EdgeInsets.all(15.0),
            child: Column(
              children: [
                SvgPicture.asset(
                  'assets/images/Vector_1.svg',
                  width: media.width,
                  fit: BoxFit.fitWidth,
                ),
                SizedBox(height: media.width * 0.01),
                Text(
                  "Let’s complete your profile",
                  style: TextStyle(
                    color: Tcolor.black,
                    fontSize: 20,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                Text(
                  'It will help us to know more about you!',
                  style: TextStyle(
                    color: Tcolor.grey,
                    fontSize: 12,
                  ),
                ),
                SizedBox(height: media.width * 0.05),
                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 15,
                  ),
                  child: Column(
                    children: [
                      RoundTextfield(
                        controller: txtDate,
                        hintText: 'Date of Birth',
                        icon: "assets/images/Iconly-Light-Calendar.svg",
                        obscureText: true,
                      ),
                      SizedBox(height: media.width * 0.05),
                      Row(
                        children: [
                          Expanded(
                            child: RoundTextfield(
                              controller: txtDate,
                              hintText: "Your Weight",
                              icon: 'assets/images/weight-scale 1.svg',
                            ),
                          ),
                          Container(
                            width: 45,
                            height: 45,
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                              gradient: LinearGradient(
                                colors: Tcolor.scondryyF,
                              ),
                              borderRadius: BorderRadius.circular(15),
                            ),
                            child: Text(
                              'KG',
                              style: TextStyle(
                                color: Tcolor.white,
                                fontSize: 12,
                              ),
                            ),
                          )
                        ],
                      ),
                      SizedBox(height: media.width * 0.05),
                      Row(
                        children: [
                          Expanded(
                            child: RoundTextfield(
                              controller: txtDate,
                              hintText: "Your Weight",
                              icon: 'assets/images/Iconly-Light-Swap.svg',
                            ),
                          ),
                          Container(
                            width: 45,
                            height: 45,
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                              gradient: LinearGradient(
                                colors: Tcolor.scondryyF,
                              ),
                              borderRadius: BorderRadius.circular(15),
                            ),
                            child: Text(
                              'CM',
                              style: TextStyle(
                                color: Tcolor.white,
                                fontSize: 12,
                              ),
                            ),
                          )
                        ],
                      ),
                      SizedBox(height: media.width * 0.4),
                      RoundButton(
                        title: "register",
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => Complete_Profile(),
                            ),
                          );
                        },
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
