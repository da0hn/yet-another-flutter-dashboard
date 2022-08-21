import 'package:flutter/material.dart';

import '../constants.dart';
import '../res/assets_res.dart';

class CloudStorageInfo {
  final String svgSrc;
  final String title;
  final String totalStorage;
  final int numOfFiles;
  final int percentage;
  final Color color;

  CloudStorageInfo({
    this.svgSrc,
    this.title,
    this.totalStorage,
    this.numOfFiles,
    this.percentage,
    this.color,
  });
}

final myFilesData = <CloudStorageInfo>[
  CloudStorageInfo(
    title: 'Documents',
    numOfFiles: 1328,
    svgSrc: AssetsRes.DOCUMENTS,
    totalStorage: '1.9GB',
    color: primaryColor,
    percentage: 35,
  ),
  CloudStorageInfo(
    title: 'Google Drive',
    numOfFiles: 1328,
    svgSrc: AssetsRes.GOOGLE_DRIVE,
    totalStorage: '2.9GB',
    color: const Color(0xFFFFA113),
    percentage: 35,
  ),
  CloudStorageInfo(
    title: 'One Drive',
    numOfFiles: 1328,
    svgSrc: AssetsRes.ONE_DRIVE,
    totalStorage: '1GB',
    color: const Color(0xFFA4CDFF),
    percentage: 10,
  ),
  CloudStorageInfo(
    title: 'Documents',
    numOfFiles: 5328,
    svgSrc: AssetsRes.DROP_BOX,
    totalStorage: '7.3GB',
    color: const Color(0xFF007EE5),
    percentage: 78,
  ),
];
