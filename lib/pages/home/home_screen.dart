import 'package:flutter/material.dart';
import 'package:nifed/pages/home/components/body.dart';
import 'package:nifed/pages/home/components/general_home_section/custom_bottom_navigation_bar.dart';

class HomeScreen extends StatelessWidget {
  static String routeName = 'Home_screen';
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Body(),
      bottomNavigationBar: CustomBottomNavigationBar(),
    );
  }
}
