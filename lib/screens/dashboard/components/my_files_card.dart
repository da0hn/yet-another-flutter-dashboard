import 'package:flutter/material.dart';

import '../../../constants.dart';
import '../../../models/MyFiles.dart';
import 'my_files_icon.dart';
import 'storage_usage_line.dart';

class MyFilesCard extends StatelessWidget {
  final CloudStorageInfo data;

  const MyFilesCard({
    Key key,
    this.data,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(defaultPadding),
      decoration: const BoxDecoration(
        color: secondaryColor,
        borderRadius: BorderRadius.all(Radius.circular(10)),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              MyFilesIcon(data: data),
              const Icon(
                Icons.more_vert,
                color: Colors.white54,
              )
            ],
          ),
          const SizedBox(height: defaultPadding),
          Text(data.title, maxLines: 1, overflow: TextOverflow.ellipsis),
          StorageUsageLine(
            color: data.color,
            percentage: data.percentage / 100,
          ),
          const SizedBox(height: defaultPadding),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                '${data.numOfFiles} Files',
                style: Theme.of(context)
                    .textTheme
                    .caption
                    .copyWith(color: Colors.white70),
              ),
              Text(
                data.totalStorage,
                style: Theme.of(context)
                    .textTheme
                    .caption
                    .copyWith(color: Colors.white70),
              ),
            ],
          )
        ],
      ),
    );
  }
}
