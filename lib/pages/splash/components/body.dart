import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nifed/components/default_button.dart';
import 'package:nifed/constant.dart';
import 'package:nifed/pages/home/home_screen.dart';

class Body extends StatelessWidget {
  const Body({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/img/bg_splash.png'),
                fit: BoxFit.cover),
          ),
        ),
        Container(
          width: double.infinity,
          decoration: BoxDecoration(gradient: kGradientColor),
          child: SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 12),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 30,
                  ),
                  Text(
                    'Nifed',
                    style:
                        GoogleFonts.bebasNeue(color: kWhiteColor, fontSize: 60),
                  ),
                  Spacer(),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text.rich(TextSpan(children: [
                        TextSpan(
                            text: 'Explore\n',
                            style: TextStyle(
                                fontWeight: FontWeight.w400,
                                fontSize: 20,
                                color: kWhiteColor)),
                        TextSpan(
                            text: 'Luxury\nPlace',
                            style: TextStyle(
                                fontSize: 50,
                                fontWeight: FontWeight.bold,
                                color: kWhiteColor))
                      ])),
                      SizedBox(
                        height: 20,
                      ),
                      DefaultButton(
                          text: 'Explore',
                          press: () {
                            Navigator.pushNamed(context, HomeScreen.routeName);
                          }),
                      SizedBox(
                        height: 40,
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
        )
      ],
    );
  }
}
