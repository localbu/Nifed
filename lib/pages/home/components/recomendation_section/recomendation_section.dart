import 'package:flutter/material.dart';
import 'package:nifed/pages/home/components/general_home_section/tittle_section.dart';
import 'package:nifed/pages/home/components/recomendation_section/recomendation_list_view.dart';

class RecomendationSection extends StatelessWidget {
  const RecomendationSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TittleSection(title: 'Recommended'),
        SizedBox(
          height: 20,
        ),
        RecomendationListView(),
      ],
    );
  }
}
