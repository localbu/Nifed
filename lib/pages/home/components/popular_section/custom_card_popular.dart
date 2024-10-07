import 'package:flutter/material.dart';
import 'package:nifed/constant.dart';
import 'package:nifed/pages/detail/detail_screen.dart';

class CustomCardPopular extends StatefulWidget {
  final String image, title, rating;

  const CustomCardPopular({
    super.key,
    required this.image,
    required this.title,
    required this.rating,
  });

  @override
  State<CustomCardPopular> createState() => _CustomCardPopularState();
}

class _CustomCardPopularState extends State<CustomCardPopular> {
  bool isLiked = false;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => Navigator.pushNamed(context, DetailScreen.routeName),
      child: Card(
        clipBehavior: Clip.none,
        color: Colors.transparent,
        shadowColor: kPrimaryLightColor.withOpacity(0.4),
        elevation: 1,
        semanticContainer: false,
        margin: EdgeInsets.only(right: 8),
        child: Container(
          width: 200,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(25),
              image: DecorationImage(
                  image: AssetImage(
                    widget.image,
                  ),
                  fit: BoxFit.cover)),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    rightSection(),
                    buttonFavorite(),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  Container buttonFavorite() {
    return Container(
      decoration: BoxDecoration(shape: BoxShape.circle, color: kWhiteColor),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: InkWell(
          onTap: () => setState(() {
            isLiked = !isLiked;
          }),
          child: Icon(
            Icons.favorite,
            color: isLiked ? Colors.redAccent : kSecondaryColor,
            size: 15,
          ),
        ),
      ),
    );
  }

  Column rightSection() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        Container(
          decoration: BoxDecoration(
              color: kPrimaryLightColor,
              boxShadow: [
                BoxShadow(
                    color: kPrimaryColor.withOpacity(0.1),
                    spreadRadius: 0.1,
                    offset: Offset(0, 0),
                    blurRadius: 0.1)
              ],
              borderRadius: BorderRadius.circular(25)),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 4),
            child: Text(
              widget.title,
              style: TextStyle(
                  color: kWhiteColor,
                  fontSize: 12,
                  fontWeight: FontWeight.bold),
            ),
          ),
        ),
        SizedBox(
          height: 10,
        ),
        Container(
          decoration: BoxDecoration(
              color: kPrimaryLightColor,
              boxShadow: [
                BoxShadow(
                  color: kPrimaryColor.withOpacity(0.2),
                  spreadRadius: 10,
                  offset: Offset(0, 0),
                  blurRadius: 10,
                )
              ],
              borderRadius: BorderRadius.circular(25)),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 2),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Icon(
                  Icons.star,
                  color: Colors.yellowAccent,
                  size: 15,
                ),
                SizedBox(
                  width: 10,
                ),
                Text(
                  widget.rating,
                  style: TextStyle(
                    color: kWhiteColor,
                    fontWeight: FontWeight.bold,
                    fontSize: 12,
                  ),
                )
              ],
            ),
          ),
        )
      ],
    );
  }
}
