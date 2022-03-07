import 'package:flutter/material.dart';
import 'package:mozi/shared/theme.dart';

class CustomContentWidget extends StatelessWidget {
  final String image;
  final String title;
  final String rating;
  const CustomContentWidget({
    Key? key,
    required this.image,
    required this.title,
    required this.rating,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: marginDefault, right: 30),
      width: 190,
      height: 306,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: 190,
            height: 250,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(
                  image,
                ),
                fit: BoxFit.cover,
              ),
            ),
          ),
          SizedBox(height: 10),
          Text(
            title,
            style: whiteTextStyle.copyWith(
              fontSize: 16,
              fontWeight: medium,
            ),
          ),
          Image.asset(
            rating,
            width: 98,
            height: 18,
          ),
        ],
      ),
    );
  }
}
