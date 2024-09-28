import 'package:flutter/material.dart';
import 'package:portfolio/constants/colors.dart';
import 'package:portfolio/screens/widgets/project_card.dart';
class CustomTabBar extends StatelessWidget {
  const CustomTabBar({super.key, required this.tabController});

  final TabController tabController;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      width: size.width*0.36,
      decoration:  BoxDecoration(
        border: Border.all(color: Colors.transparent),
        color: AppColors.ebony,
        borderRadius: BorderRadius.circular(20)
      ),
      child: TabBar(
      controller: tabController
      ,tabs: const [
          Tab(text: 'All',),
          Tab(text: 'Apps',),
          Tab(text: 'Branding',),
          Tab(text: 'Ui/Ux',)
      ],
      indicator: BoxDecoration(
        color: Colors.purple,
        borderRadius: BorderRadius.circular(20)
      ),
        indicatorSize: TabBarIndicatorSize.tab,
        labelStyle: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
        labelPadding: EdgeInsets.symmetric(horizontal: 20.0),
        labelColor: Colors.white,
        unselectedLabelColor: Colors.grey,
        dividerColor: Colors.transparent,
      ),
    );
  }
}


class CustomTabBarView extends StatelessWidget {
  final TabController tabController;
  const CustomTabBarView({super.key, required this.tabController});

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return TabBarView(controller: tabController,
        children: [
          AllProjects(size: size),
          AllProjects(size: size),
          AllProjects(size: size),
          AllProjects(size: size),
        ]);
  }
}

class AllProjects extends StatelessWidget {
  const AllProjects({super.key, required this.size});
final Size  size;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: size.width *0.18),
      child: Center(
        child: GridView(gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisSpacing: 10,
          crossAxisSpacing: 10,
          childAspectRatio: 3/3
        ),
          children: [
            ProjectCard(),
            ProjectCard(),
            ProjectCard(),
            ProjectCard(),
          ]),
      ),
    );
  }
}
