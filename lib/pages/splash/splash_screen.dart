import 'package:flutter/material.dart';
import 'package:nifed/constant.dart';
import 'package:nifed/pages/splash/components/body.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBackgroundColor,
      body: Body(),
    );
  }
}
