import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../constants.dart';
import '../../models/RecentFile.dart';
import 'recent_files_title.dart';

class RecentFilesTable extends StatelessWidget {
  final List<RecentFile> data;

  const RecentFilesTable({
    Key key,
    @required this.data,
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
        children: [
          const RecentFilesTitle(),
          SizedBox(
            width: double.infinity,
            child: DataTable(
              columnSpacing: defaultPadding,
              columns: const [
                DataColumn(label: Text('File Name')),
                DataColumn(label: Text('Date')),
                DataColumn(label: Text('Size')),
              ],
              rows: List.generate(
                data.length,
                (index) => _recentFileTableItem(data[index]),
              ),
            ),
          ),
        ],
      ),
    );
  }

  DataRow _recentFileTableItem(RecentFile item) {
    return DataRow(
      cells: [
        DataCell(
          Row(
            children: [
              SvgPicture.asset(
                item.icon,
                width: 30,
                height: 30,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: defaultPadding,
                ),
                child: Text(item.title),
              )
            ],
          ),
        ),
        DataCell(Text(item.date)),
        DataCell(Text(item.size)),
      ],
    );
  }
}
