import 'package:flutter/material.dart';

import '../../../constants.dart';
import '../../../res/assets_res.dart';
import 'chart.dart';
import 'storage_detail_card.dart';

class StorageDetail extends StatelessWidget {
  const StorageDetail({
    Key key,
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
        children: const [
          StorageDetailTitle(label: 'Storage Details'),
          SizedBox(height: defaultPadding),
          Chart(),
          StorageDetailCard(
            title: 'Documents Files',
            detail: '1538 Files',
            icon: AssetsRes.DOCUMENTS,
            value: '1.3 GB',
          ),
          StorageDetailCard(
            title: 'Media Files',
            detail: '1391 Files',
            icon: AssetsRes.MEDIA,
            value: '15.13 GB',
          ),
          StorageDetailCard(
            title: 'Other Files',
            detail: '593 Files',
            icon: AssetsRes.FOLDER,
            value: '23.9 GB',
          ),
          StorageDetailCard(
            title: 'Unknown Files',
            detail: '257 Files',
            icon: AssetsRes.UNKNOWN,
            value: '13.47 GB',
          ),
        ],
      ),
    );
  }
}

class StorageDetailTitle extends StatelessWidget {
  const StorageDetailTitle({
    Key key,
    @required this.label,
  }) : super(key: key);

  final String label;

  @override
  Widget build(BuildContext context) {
    return Text(
      label,
      style: const TextStyle(
        fontSize: 18,
        fontWeight: FontWeight.w500,
      ),
    );
  }
}
