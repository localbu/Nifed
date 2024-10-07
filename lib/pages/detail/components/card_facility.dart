import 'package:flutter/material.dart';
import 'package:nifed/constant.dart';

class CardFacility extends StatelessWidget {
  final IconData icon;
  final String text;
  const CardFacility({
    super.key, required this.icon, required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Icon(
              icon,
              color: kSecondaryColor.withOpacity(0.7),
              size: 50,
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              text,
              style: TextStyle(
                  color: kSecondaryColor.withOpacity(0.7),
                  fontWeight: FontWeight.w500),
            )
          ],
        ),
      ),
    );
  }
}
