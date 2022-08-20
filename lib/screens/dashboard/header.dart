import 'package:admin/res/assets_res.dart';
import 'package:admin/screens/dashboard/components/profile_card.dart';
import 'package:admin/screens/dashboard/components/search_field.dart';
import 'package:flutter/material.dart';

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
        Spacer(flex: 2),
        Expanded(
          child: SearchField(
            onTap: () {},
          ),
        ),
        ProfileCard(
          image: AssetsResources.IMAGE_PROFILE_PIC,
          username: 'Angelina Joli',
        ),
      ],
    );
  }
}
