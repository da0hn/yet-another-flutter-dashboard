import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../constants.dart';

class StorageDetailCard extends StatelessWidget {
  const StorageDetailCard({
    Key key,
    @required this.title,
    @required this.detail,
    @required this.icon,
    @required this.value,
  }) : super(key: key);

  final String title;
  final String detail;
  final String icon;
  final String value;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(defaultPadding),
      margin: const EdgeInsets.only(top: defaultPadding),
      decoration: _circularDecoration(),
      child: _content(context),
    );
  }

  Row _content(BuildContext context) {
    return Row(
      children: [
        _leadingIcon(),
        Expanded(
          child: Padding(
            padding: _padding(),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [_title(), _detail(context)],
            ),
          ),
        ),
        _trailingValue(),
      ],
    );
  }

  EdgeInsets _padding() {
    return const EdgeInsets.symmetric(
      horizontal: 8.0,
      vertical: 8.0,
    );
  }

  BoxDecoration _circularDecoration() {
    return BoxDecoration(
      borderRadius: const BorderRadius.all(
        Radius.circular(10),
      ),
      border: Border.all(
        width: 2,
        color: primaryColor.withOpacity(0.15),
      ),
    );
  }

  SizedBox _leadingIcon() {
    return SizedBox(
      height: 20,
      width: 20,
      child: SvgPicture.asset(icon),
    );
  }

  Text _trailingValue() => Text(value);

  Text _detail(BuildContext context) {
    return Text(
      detail,
      style:
          Theme.of(context).textTheme.caption.copyWith(color: Colors.white70),
    );
  }

  Text _title() {
    return Text(
      title,
      maxLines: 1,
      overflow: TextOverflow.ellipsis,
    );
  }
}
