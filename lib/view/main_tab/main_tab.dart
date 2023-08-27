import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:flutter_fitness_app/common/colors.dart';
import 'package:flutter_fitness_app/common_widget/Tab_Button.dart';
import 'package:flutter_fitness_app/view/home/blank_view.dart';
import 'package:flutter_fitness_app/view/home/camera_view.dart';
import 'package:flutter_fitness_app/view/home/home_view.dart';
import 'package:flutter_fitness_app/view/home/person_view.dart';
import 'package:flutter_svg/flutter_svg.dart';

class MainTab extends StatefulWidget {
  const MainTab({super.key});

  @override
  State<MainTab> createState() => _MainTabState();
}

class _MainTabState extends State<MainTab> {
  int selectTab = 0;
  final PageStorageBucket pageBucket = PageStorageBucket();
  Widget currentTab = HomeView();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: TColor.white,
      body: PageStorage(bucket: pageBucket, child: currentTab),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: SizedBox(
        width: 60,
        height: 60,
        child: InkWell(
          onTap: () {},
          child: Container(
            width: 65,
            height: 65,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: TColor.PrimaryF,
              ),
              borderRadius: BorderRadius.circular(35),
            ),
            child: Icon(
              Icons.search,
              color: TColor.white,
              size: 30,
            ),
          ),
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        child: Container(
          padding: EdgeInsets.only(
            top: 10,
          ),
          decoration: BoxDecoration(color: TColor.white, boxShadow: [
            BoxShadow(
              color: Colors.black12,
              blurRadius: 2,
              offset: Offset(
                0,
                -2,
              ),
            )
          ]),
          height: kToolbarHeight,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              TabButton(
                icon: 'assets/images/Home.svg',
                SelectIcon: 'assets/images/Home_active.svg',
                isActive: selectTab == 0,
                onTap: () {
                  selectTab = 0;
                  currentTab = HomeView();
                  if (mounted) {
                    setState(() {});
                  }
                },
              ),
              TabButton(
                icon: 'assets/images/navbar.svg',
                SelectIcon: 'assets/images/NavbarActive.svg',
                isActive: selectTab == 1,
                onTap: () {
                  selectTab = 1;
                  currentTab = BlankView();
                  if (mounted) {
                    setState(() {});
                  }
                },
              ),
              SizedBox(
                width: 40,
              ),
              TabButton(
                icon: 'assets/images/Camera.svg',
                SelectIcon: 'assets/images/Camera_active.svg',
                isActive: selectTab == 2,
                onTap: () {
                  selectTab = 2;
                  currentTab = CameraView();
                  if (mounted) {
                    setState(() {});
                  }
                },
              ),
              TabButton(
                icon: 'assets/images/Profile.svg',
                SelectIcon: 'assets/images/Profile_active.svg',
                isActive: selectTab == 3,
                onTap: () {
                  selectTab = 3;
                  currentTab = PersonView();
                  if (mounted) {
                    setState(() {});
                  }
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
