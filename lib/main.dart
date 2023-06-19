import 'package:flutter/material.dart';
import 'package:flutter_fitness_app/view/on_boarding/Page_One.dart';
import 'package:flutter_svg/svg.dart';

import 'common/colors.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Fitness',
      theme:
          ThemeData(primaryColor: Tcolor.primaryColor1, fontFamily: "Poppins"),
      home: PageOne(),
    );
  }
}


