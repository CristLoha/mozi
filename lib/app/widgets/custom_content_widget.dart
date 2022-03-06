import 'package:flutter/material.dart';
import 'package:mozi/shared/theme.dart';

class CustomContentWidget extends StatelessWidget {
  const CustomContentWidget({
    Key? key,
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
                  'assets/image_avatar.png',
                ),
                fit: BoxFit.cover,
              ),
            ),
          ),
          SizedBox(height: 10),
          Text(
            'Avatar',
            style: whiteTextStyle.copyWith(
              fontSize: 16,
              fontWeight: medium,
            ),
          ),
          Image.asset(
            'assets/image_rating.png',
            width: 98,
            height: 18,
          ),
        ],
      ),
    );
  }
}
