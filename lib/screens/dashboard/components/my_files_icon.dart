import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../constants.dart';
import '../../../models/MyFiles.dart';

class MyFilesIcon extends StatelessWidget {
  const MyFilesIcon({
    Key key,
    @required this.data,
  }) : super(key: key);

  final CloudStorageInfo data;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: 50,
      padding: const EdgeInsets.all(defaultPadding * 0.75),
      decoration: BoxDecoration(
        color: data.color.withOpacity(0.2),
        borderRadius: const BorderRadius.all(Radius.circular(10)),
      ),
      child: SvgPicture.asset(
        data.svgSrc,
        height: 24.0,
        color: data.color,
      ),
    );
  }
}
