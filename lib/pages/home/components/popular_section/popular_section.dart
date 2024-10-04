import 'package:flutter/material.dart';
import 'package:nifed/pages/home/components/popular_section/popular_list_view.dart';
import 'package:nifed/pages/home/components/general_home_section/tittle_section.dart';

class PopularSection extends StatelessWidget {
  const PopularSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TittleSection(
          title: 'Popular',
        ),
        SizedBox(
          height: 20,
        ),
        PopularListView(),
      ],
    );
  }
}
