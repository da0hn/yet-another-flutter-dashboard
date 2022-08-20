import 'package:admin/constants.dart';
import 'package:admin/res/assets_res.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SearchField extends StatelessWidget {
  const SearchField({
    Key key,
    @required this.onTap,
  }) : super(key: key);

  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
          fillColor: secondaryColor,
          filled: true,
          hintText: 'Search',
          border: OutlineInputBorder(
            borderSide: BorderSide.none,
            borderRadius: BorderRadius.all(
              Radius.circular(10),
            ),
          ),
          suffixIcon: InkWell(
            onTap: onTap,
            child: Container(
              margin: EdgeInsets.symmetric(
                horizontal: defaultPadding / 2,
              ),
              padding: EdgeInsets.all(defaultPadding * 0.75),
              decoration: BoxDecoration(
                color: primaryColor,
                borderRadius: BorderRadius.circular(10),
              ),
              child: SvgPicture.asset(AssetsResources.SEARCH),
            ),
          )),
    );
  }
}
