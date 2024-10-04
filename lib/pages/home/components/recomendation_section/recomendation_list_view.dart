import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:nifed/pages/home/components/recomendation_section/custom_recomendation_card.dart';

class RecomendationListView extends StatelessWidget {
  const RecomendationListView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: BoxConstraints(maxHeight: 200),
      child: ListView(
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        children: [
          CustomRecomendationCard(
            place: 'Bali',
            specialForYou: 'Hot Deal',
            icon: Icons.trending_up,
            img: 'assets/img/bali.png',
          ),
          CustomRecomendationCard(
            place: 'Bangka',
            specialForYou: 'New',
            icon: Icons.new_releases,
            img: 'assets/img/bangka.png',
          ),
          CustomRecomendationCard(
            place: 'Ampera',
            specialForYou: 'Comfort',
            icon: CupertinoIcons.heart,
            img: 'assets/img/ampera.png',
          ),
          CustomRecomendationCard(
            place: 'Aspen',
            specialForYou: 'Best',
            icon: Icons.star,
            img: 'assets/img/foto1.png',
          )
        ],
      ),
    );
  }
}
