import 'package:flutter/material.dart';

import '../../constants.dart';
import '../../models/RecentFile.dart';
import '../../responsive.dart';
import 'components/header.dart';
import 'components/my_files.dart';
import 'components/recent_files_table.dart';
import 'components/search_field.dart';
import 'components/storage_detail.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        padding: const EdgeInsets.all(defaultPadding),
        primary: false,
        child: Column(
          children: [
            const Header(),
            Visibility(
              visible: Responsive.isMobile(context),
              child: Padding(
                padding: const EdgeInsets.only(top: defaultPadding),
                child: SearchField(onTap: () {}),
              ),
            ),
            const SizedBox(height: defaultPadding),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  flex: 5,
                  child: Column(
                    children: [
                      const MyFiles(),
                      const SizedBox(height: defaultPadding),
                      RecentFilesTable(data: recentFilesData),
                      Visibility(
                        visible: !Responsive.isDesktop(context),
                        child: const SizedBox(height: defaultPadding),
                      ),
                      Visibility(
                        visible: !Responsive.isDesktop(context),
                        child: const StorageDetail(),
                      ),
                    ],
                  ),
                ),
                Visibility(
                  visible: Responsive.isDesktop(context),
                  child: const SizedBox(width: defaultPadding),
                ),
                Visibility(
                  visible: Responsive.isDesktop(context),
                  child: const Expanded(
                    flex: 2,
                    child: StorageDetail(),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
