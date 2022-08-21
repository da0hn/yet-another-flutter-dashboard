import 'package:flutter/material.dart';

class RecentFilesTitle extends StatelessWidget {
  const RecentFilesTitle({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      'Recent Files',
      style: Theme.of(context).textTheme.subtitle1,
    );
  }
}
