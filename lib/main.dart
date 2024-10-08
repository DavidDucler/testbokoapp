import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:testbokotech/features/auth/controllers/auth_controller.dart';
import 'package:testbokotech/features/auth/pages/login_page.dart';
import 'package:testbokotech/features/auth/services/auth_service.dart';
import 'package:testbokotech/pages/landing_page.dart';
import 'package:testbokotech/pages/splashscreen.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  Get.lazyPut(
    () => AuthController(
      authService: Get.put(
        AuthService(),
      ),
    ),
  );
  runApp(const MyApp());
}

class MyApp extends GetWidget<AuthController> {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: const Size(360, 690),
        minTextAdapt: true,
        splitScreenMode: true,
        builder: (_, context) {
          return GetMaterialApp(
            title: 'Bokotech',
            theme: ThemeData(
              // This is the theme of your application.
              //
              // Try running your application with "flutter run". You'll see the
              // application has a blue toolbar. Then, without quitting the app, try
              // changing the primarySwatch below to Colors.green and then invoke
              // "hot reload" (press "r" in the console where you ran "flutter run",
              // or simply save your changes to "hot reload" in a Flutter IDE).
              // Notice that the counter didn't reset back to zero; the application
              // is not restarted.
              primarySwatch: Colors.blue,
            ),
            initialRoute: '/',
            getPages: [
              GetPage(
                name: '/',
                page: () => const SplashScreenPage(),
              ),
              GetPage(
                name: '/home',
                page: () => const LandingPage(),
              ),
              GetPage(
                name: '/login',
                page: () => const LoginPage(),
              ),
            ],
          );
        });
  }
}
