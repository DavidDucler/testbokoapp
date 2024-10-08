import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:testbokotech/controllers/home_controller.dart';
import 'package:testbokotech/pages/profile_page.dart';

class LandingPage extends StatefulWidget {
  const LandingPage({super.key});

  @override
  State<LandingPage> createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  final HomeController homeController = Get.put(HomeController());
  @override
  Widget build(BuildContext context) {
    return Obx(
      () => Scaffold(
        body: [
          Container(),
          Container(),
          Container(),
          const ProfilePage()
        ][homeController.currentIndex],
        floatingActionButton: SizedBox(
          height: 60.w,
          width: 60.w,
          child: FloatingActionButton(
            onPressed: () {},
            child: Image.asset(
              "assets/images/homebutton.png",
              fit: BoxFit.cover,
            ),
          ),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        bottomNavigationBar: bottomNavigation(homeController),
      ),
    );
  }
}

Widget bottomNavigation(HomeController homeController) => Container(
      width: Get.width,
      height: 70.h,
      decoration: const BoxDecoration(color: Colors.white),
      child: Stack(
        alignment: Alignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Obx(
                    () => InkWell(
                      onTap: () => homeController.updateIndex(0),
                      child: homeController.currentIndex != 0
                          ? Image.asset(
                              'assets/images/home_unchecked.png',
                              width: 24.w,
                              height: 24.w,
                            )
                          : Image.asset(
                              'assets/images/home.png',
                              width: 24.w,
                              height: 24.w,
                            ),
                    ),
                  ),
                   SizedBox(
                    width: 40.w,
                  ),
                  Obx(
                    () => InkWell(
                      onTap: () => homeController.updateIndex(1),
                      child: homeController.currentIndex != 1
                          ? Image.asset(
                              'assets/images/notification_unchecked.png',
                             width: 24.w,
                              height: 24.w,
                            )
                          : Image.asset(
                              'assets/images/notification.png',
                             width: 24.w,
                              height: 24.w,
                            ),
                    ),
                  ),
                ],
              ),
               SizedBox(
                width: 40.w,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Obx(
                    () => InkWell(
                      onTap: () => homeController.updateIndex(2),
                      child: homeController.currentIndex != 2
                          ? Image.asset(
                              'assets/images/person_unchecked.png',
                              width: 24.w,
                              height: 24.w,
                            )
                          : Image.asset(
                              'assets/images/person.png',
                             width: 24.w,
                              height: 24.w,
                            ),
                    ),
                  ),
                   SizedBox(
                    width: 40.w,
                  ),
                  Obx(
                    () => InkWell(
                      onTap: () => homeController.updateIndex(3),
                      child: homeController.currentIndex != 3
                          ? Image.asset(
                              'assets/images/menu_unchecked.png',
                              width: 24.w,
                              height: 24.w,
                            )
                          : Image.asset(
                              'assets/images/menu.png',
                              width: 24.w,
                              height: 24.w,
                            ),
                    ),
                  ),
                ],
              ),
            ],
          )
        ],
      ),
    );
