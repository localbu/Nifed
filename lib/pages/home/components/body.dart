import 'package:flutter/material.dart';
import 'package:nifed/pages/home/components/general_home_section/custom_search_bar.dart';
import 'package:nifed/pages/home/components/general_home_section/home_contain.dart';
import 'package:nifed/pages/home/components/general_home_section/home_tab_bar.dart';
import 'package:nifed/pages/home/components/general_home_section/tittle_home.dart';

class Body extends StatefulWidget {
  const Body({
    super.key,
  });

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _tabController = TabController(length: 4, vsync: this);
  }

  @override
  void dispose() {
    // TODO: implement dispose
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: SizedBox(
            width: MediaQuery.sizeOf(context).width,
            child: Column(
              children: [
                TittleHome(),
                SizedBox(height: 20),
                CustomSearchBar(),
                HomeTabBar(tabController: _tabController),
                SizedBox(height: 20,),
                HomeContain(tabController: _tabController)
              ],
            ),
          ),
        ),
      ),
    );
  }
}
