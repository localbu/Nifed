import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:nifed/constant.dart';

class CustomBottomNavigationBar extends StatelessWidget {
  const CustomBottomNavigationBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(20, 0, 20, 40),
      child: Container(
        padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(50), color: kPrimaryLightColor),
        child: GNav(
            textStyle:
                TextStyle(fontWeight: FontWeight.bold, color: kWhiteColor),
            textSize: 20,
            iconSize: 20,
            padding: EdgeInsets.symmetric(vertical: 15, horizontal: 20),
            backgroundColor: Colors.transparent,
            color: kWhiteColor,
            activeColor: kWhiteColor,
            tabBackgroundColor: kPrimaryColor,
            tabs: [
              GButton(
                icon: Icons.home,
                gap: 10,
                text: 'Home',
              ),
              GButton(
                icon: Icons.search,
                gap: 10,
                text: 'Discover',
              ),
              GButton(
                icon: Icons.settings,
                gap: 10,
                text: 'Setting',
              ),
              GButton(
                icon: Icons.person,
                gap: 10,
                text: 'User',
              ),
            ]),
      ),
    );
  }
}
