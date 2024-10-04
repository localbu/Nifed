import 'package:flutter/material.dart';
import 'package:nifed/pages/home/components/general_home_section/tab_view_section_contain.dart';

class HomeContain extends StatelessWidget {
  const HomeContain({
    super.key,
    required TabController tabController,
  }) : _tabController = tabController;

  final TabController _tabController;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: TabBarView(
        controller: _tabController,
        children: [
          TabViewSectionContain(),
          TabViewSectionContain(),
          TabViewSectionContain(),
          TabViewSectionContain(),
        ],
      ),
    );
  }
}
