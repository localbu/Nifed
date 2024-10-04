import 'package:flutter/material.dart';
import 'package:nifed/pages/home/components/recomendation_section/recomendation_section.dart';
import 'package:nifed/pages/home/components/popular_section/popular_section.dart';

class TabViewSectionContain extends StatelessWidget {
  const TabViewSectionContain({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            PopularSection(),
            SizedBox(
              height: 20,
            ),
            RecomendationSection()
          ],
        ),
      ),
    );
  }
}
