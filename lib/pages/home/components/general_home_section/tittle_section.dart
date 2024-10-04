import 'package:flutter/material.dart';
import 'package:nifed/constant.dart';

class TittleSection extends StatelessWidget {
  final String title;
  const TittleSection({
    super.key, required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: TextStyle(
              color: kPrimaryColor, fontSize: 18, fontWeight: FontWeight.bold),
        ),
        Text(
          'See All',
          style: TextStyle(color: kTextColor.withOpacity(0.5)),
        )
      ],
    );
  }
}
