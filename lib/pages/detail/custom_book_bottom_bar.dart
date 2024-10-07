import 'package:flutter/material.dart';
import 'package:nifed/constant.dart';

class CustomBookBottomBar extends StatelessWidget {
  const CustomBookBottomBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      color: kWhiteColor,
      child: Padding(
        padding: const EdgeInsets.all(12.0),
          child: Container(
            color: kWhiteColor,
            padding: EdgeInsets.all(8.0),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        'Price',
                        style: TextStyle(
                          fontSize: 12,
                        ),
                      ),
                      Text(
                        '199',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 30,
                          color: Colors.green,
                        ),
                      )
                    ],
                  ),
                  GestureDetector(
                    onTap: () {},
                    child: Container(
                      decoration: BoxDecoration(
                        color: kPrimaryColor, borderRadius: BorderRadius.circular(50)),
                      width: 300,
                      child: Center(
                        child: Padding(
                          padding: const EdgeInsets.symmetric(vertical: 15),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Text(
                                  'Pay Now',
                                  style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold,
                                    color: kWhiteColor),
                                ),
                                Icon(Icons.arrow_forward, color: kWhiteColor,)
                              ],
                            ),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
      ),
    );
  }
}