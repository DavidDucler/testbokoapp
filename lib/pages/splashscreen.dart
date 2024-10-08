import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SplashScreenPage extends StatefulWidget {
  const SplashScreenPage({super.key});

  @override
  State<SplashScreenPage> createState() => _SplashScreenPageState();
}

class _SplashScreenPageState extends State<SplashScreenPage> {
  @override
  void initState() {
    
    super.initState();
    Timer(Duration(seconds: 5), () {
      Get.offAllNamed('/login');
    },);
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Image.asset(
          'assets/images/logo.png',
          width: 250,
          height: 250,
          fit: BoxFit.contain,
        ),
      ),
    );
  }
}
