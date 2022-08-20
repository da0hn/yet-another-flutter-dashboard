import 'package:flutter/material.dart';

import '../../../res/assets_res.dart';
import 'profile_card.dart';
import 'search_field.dart';

class Header extends StatelessWidget {
  const Header({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          'Dashboard',
          style: Theme.of(context).textTheme.headline6,
        ),
        const Spacer(flex: 2),
        Expanded(
          child: SearchField(
            onTap: () {},
          ),
        ),
        const ProfileCard(
          image: AssetsRes.IMAGE_PROFILE_PIC,
          username: 'Angelina Joli',
        ),
      ],
    );
  }
}
