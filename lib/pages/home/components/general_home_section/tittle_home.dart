import 'package:flutter/material.dart';
import 'package:nifed/constant.dart';

class TittleHome extends StatelessWidget {
  const TittleHome({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Explore',
              style: TextStyle(color: kTextColor),
            ),
            Text(
              'Nifed',
              style: TextStyle(
                color: kPrimaryColor, fontSize: 40, fontWeight: FontWeight.bold),
            )
          ],
        ),
        GestureDetector(
          onTap: () {},
          child: Container(
            decoration: BoxDecoration(
              color: kPrimaryLightColor.withOpacity(0.5),
              borderRadius: BorderRadius.circular(50),
            ),
            child: Padding(
              padding: const EdgeInsets.all(12.0),
                child: Row(
                  children: [
                    Icon(
                      Icons.location_on,
                      color: kPrimaryColor,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      'Location',
                      style: TextStyle(fontSize: 16, color: kTextColor),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Icon(
                      Icons.arrow_circle_down_sharp,
                      color: kPrimaryColor,
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