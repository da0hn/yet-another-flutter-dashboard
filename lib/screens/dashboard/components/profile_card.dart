import 'package:admin/constants.dart';
import 'package:admin/res/assets_res.dart';
import 'package:flutter/material.dart';

class ProfileCard extends StatelessWidget {
  const ProfileCard({
    Key key,
    @required this.username,
    @required this.image
  }) : super(key: key);

  final String username;
  final String image;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: defaultPadding),
      padding: const EdgeInsets.symmetric(
        horizontal: defaultPadding,
        vertical: defaultPadding / 2,
      ),
      decoration: BoxDecoration(
        color: secondaryColor,
        borderRadius: const BorderRadius.all(Radius.circular(10)),
        border: Border.all(color: Colors.white10),
      ),
      child: Row(
        children: [
          Image.asset(
            image,
            height: 38,
            filterQuality: FilterQuality.high,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: defaultPadding / 2,
            ),
            child: Text(username),
          ),
          const Icon(Icons.keyboard_arrow_down, color: Colors.white),
        ],
      ),
    );
  }
}
