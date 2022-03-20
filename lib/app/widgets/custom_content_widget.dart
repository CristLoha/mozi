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
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          margin: EdgeInsets.only(right: 15),
          child: Image.asset(
            image,
            width: 190,
            height: 250,
          ),
        ),
        Text(
          title,
          style: whiteTextStyle.copyWith(
            fontWeight: medium,
            fontSize: 16,
          ),
        )
      ],
    );
  }
}
