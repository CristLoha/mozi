import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:mozi/app/modules/home/views/home_view.dart';
import 'package:mozi/shared/theme.dart';

import '../controllers/navigation_bar_controller.dart';

class NavigationBarView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<NavigationBarController>(builder: (controller) {
      return Scaffold(
        backgroundColor: kBlackColor,
        body: SafeArea(
          child: IndexedStack(
            index: controller.tabIndex,
            children: [
              HomeView(),
            ],
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          backgroundColor: kBlackColor,
          unselectedItemColor: kGreyColor2,
          selectedItemColor: kPrimaryColor,
          onTap: controller.changeTabIndex,
          showSelectedLabels: false,
          showUnselectedLabels: false,
          currentIndex: controller.tabIndex,
          type: BottomNavigationBarType.fixed,
          items: [
            _bottomNavigationBarItem(icon: CupertinoIcons.home, label: 'Home'),
            _bottomNavigationBarItem(
                icon: CupertinoIcons.search, label: 'Search'),
            _bottomNavigationBarItem(
                icon: CupertinoIcons.list_bullet, label: 'List'),
            _bottomNavigationBarItem(
                icon: CupertinoIcons.profile_circled, label: 'Profile'),
          ],
        ),
      );
    });
  }

  _bottomNavigationBarItem({required IconData icon, required String label}) {
    return BottomNavigationBarItem(icon: Icon(icon), label: label);
  }
}
