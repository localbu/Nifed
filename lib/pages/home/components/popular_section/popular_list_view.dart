import 'package:flutter/material.dart';
import 'package:nifed/pages/home/components/popular_section/custom_card_popular.dart';

class PopularListView extends StatelessWidget {
  const PopularListView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: BoxConstraints(maxHeight: 250),
      child: ListView(
        shrinkWrap: false,
        scrollDirection: Axis.horizontal,
        children: [
          CustomCardPopular(
            image: 'assets/img/foto1.png',
            title: 'Aspen Palace',
            rating: '4.3',
          ),
          SizedBox(
            width: 30,
          ),
          CustomCardPopular(
            image: 'assets/img/bali.png',
            title: 'nice one',
            rating: '6',
          ),
          SizedBox(
            width: 30,
          ),
          CustomCardPopular(
            image: 'assets/img/bangka.png',
            title: 'nice one',
            rating: '6',
          ),
          SizedBox(
            width: 30,
          ),
          CustomCardPopular(
              image: 'assets/img/ampera.png', title: 'nice one', rating: '6'),
        ],
      ),
    );
  }
}
