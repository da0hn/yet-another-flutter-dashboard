import 'package:admin/constants.dart';
import 'package:flutter/material.dart';

import 'components/header.dart';
import 'components/storage_detail.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        padding: const EdgeInsets.all(defaultPadding),
        child: Column(
          children: [
            const Header(),
            const SizedBox(height: defaultPadding),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  flex: 5,
                  child: SizedBox(
                    height: 800,
                    child: Column(
                      children: [
                        Expanded(
                          flex: 1,
                          child: Container(color: Colors.amber),
                        ),
                        const SizedBox(height: defaultPadding),
                        Expanded(
                          flex: 2,
                          child: Container(color: Colors.cyanAccent),
                        ),
                        const SizedBox(height: defaultPadding),
                        Expanded(
                          flex: 7,
                          child: Container(color: Colors.deepPurple),
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(width: defaultPadding),
                const Expanded(
                  flex: 2,
                  child: StorageDetail(),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
