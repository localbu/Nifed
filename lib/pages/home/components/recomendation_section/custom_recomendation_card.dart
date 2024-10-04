import 'package:flutter/material.dart';
import 'package:nifed/constant.dart';

class CustomRecomendationCard extends StatelessWidget {
  final String place, specialForYou, img;
  final IconData icon;
  const CustomRecomendationCard({
    super.key,
    required this.place,
    required this.specialForYou,
    required this.icon,
    required this.img,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          bgAndLabel(),
          SizedBox(
            height: 10,
          ),
          tulisanBawah()
        ],
      ),
    );
  }

  Padding tulisanBawah() {
    return Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                place,
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 5,
              ),
              Row(
                children: [
                  Icon(icon),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    specialForYou,
                    style: TextStyle(
                        fontSize: 10,
                        color: kSecondaryColor.withOpacity(0.7)),
                  )
                ],
              ),
            ],
          ),
        );
  }

  Padding bgAndLabel() {
    return Padding(
          padding: const EdgeInsets.all(4.0),
          child: Stack(
            clipBehavior: Clip.none,
            children: [
              // bg image
              ClipRRect(
                  borderRadius: BorderRadius.circular(10.0),
                  child: Image.asset(
                    img,
                    width: 200,
                    height: 100,
                    fit: BoxFit.fitWidth,
                  )),
              // label overlay
              Positioned(
                bottom: -20,
                right: 10,
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                  decoration: BoxDecoration(
                    border: Border.all(width: 3, color: kWhiteColor),
                    color: kPrimaryColor,
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                  ),
                  child: Text(
                    '4N/5D',
                    style: TextStyle(
                      color: kWhiteColor,
                      fontSize: 12,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              )
            ],
          ),
        );
  }
}
