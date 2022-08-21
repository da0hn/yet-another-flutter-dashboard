import 'package:flutter/material.dart';

import '../../../res/assets_res.dart';
import '../../../responsive.dart';
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
        Visibility(
          visible: !Responsive.isDesktop(context),
          child: IconButton(
            icon: const Icon(Icons.menu),
            iconSize: 24,
            onPressed: () {},
          ),
        ),
        Visibility(
          visible: Responsive.isDesktop(context),
          child: Text(
            'Dashboard',
            style: Theme.of(context).textTheme.headline6,
          ),
        ),
        const Spacer(),
        // Visibility(
        //   visible: Responsive.isDesktop(context),
        //   child: const Spacer(),
        // ),
        Expanded(
          child: Visibility(
            visible: !Responsive.isMobile(context),
            child: SearchField(
              onTap: () {},
            ),
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
