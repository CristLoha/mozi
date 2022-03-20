import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:mozi/models/list_movie.dart';
import 'package:mozi/shared/theme.dart';

import '../../../widgets/custom_content_widget.dart';
import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    Widget header() {
      return Padding(
        padding: EdgeInsets.only(
          top: marginDefault,
          right: marginDefault,
          left: marginDefault,
        ),
        child: Row(
          children: [
            Image.asset(
              'assets/profile.png',
              width: 48,
              height: 48,
            ),
            SizedBox(width: 14),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Good Morning',
                    style: greyTextStyle.copyWith(
                      fontSize: 12,
                    ),
                  ),
                  SizedBox(height: 2),
                  Text(
                    'Alex Samm',
                    style: whiteTextStyle.copyWith(
                      fontWeight: medium,
                    ),
                  ),
                ],
              ),
            ),
            Image.asset(
              'assets/icon_notif.png',
              width: 18,
              height: 19,
            ),
          ],
        ),
      );
    }

    Widget contentHorizontal() {
      return Column(
        children: [
          //title movie
          Padding(
            padding: EdgeInsets.only(
              left: marginDefault,
              top: marginDefault,
              right: marginDefault,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Top Movie',
                  style: whiteTextStyle.copyWith(
                    fontSize: 20,
                    fontWeight: medium,
                  ),
                ),
                Text(
                  'See more',
                  style: greyTextStyle.copyWith(
                    fontWeight: light,
                  ),
                ),
              ],
            ),
          ),
          //content movie
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            padding: EdgeInsets.only(left: 30, right: 15, top: 12),
            child: Container(
              height: 320,
              child: ListView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                scrollDirection: Axis.horizontal,
                itemCount: allMovie.length,
                itemBuilder: (context, index) {
                  ListMovie movie = allMovie[index];
                  return GestureDetector(
                    onTap: () {},
                    child: CustomContentWidget(
                      image: movie.image,
                      title: movie.titleMovie,
                      rating: movie.rating,
                    ),
                  );
                },
              ),
            ),
          ),
        ],
      );
    }

    return Scaffold(
      backgroundColor: kBlackColor,
      body: ListView(
        physics: const ScrollPhysics(),
        children: [
          header(),
          contentHorizontal(),
        ],
      ),
    );
  }
}
