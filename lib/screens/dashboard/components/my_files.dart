import 'package:flutter/material.dart';

import '../../../constants.dart';
import '../../../models/MyFiles.dart';
import 'my_files_card.dart';

class MyFiles extends StatelessWidget {
  const MyFiles({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            _title(context),
            AddNewFileButton(onPressed: () {}),
          ],
        ),
        const SizedBox(height: defaultPadding),
        GridView.builder(
          physics: const NeverScrollableScrollPhysics(),
          itemCount: myFilesData.length,
          shrinkWrap: true,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 4,
            crossAxisSpacing: defaultPadding,
            childAspectRatio: 1.4,
          ),
          itemBuilder: (context, index) {
            return MyFilesCard(data: myFilesData[index]);
          },
        ),
      ],
    );
  }

  Text _title(BuildContext context) {
    return Text(
      'My Files',
      style: Theme.of(context).textTheme.subtitle1,
    );
  }
}

class AddNewFileButton extends StatelessWidget {
  const AddNewFileButton({
    Key key,
    @required this.onPressed,
  }) : super(key: key);

  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton.icon(
      style: TextButton.styleFrom(
        padding: const EdgeInsets.symmetric(
          horizontal: defaultPadding * 1.5,
          vertical: defaultPadding,
        ),
        elevation: 20.0,
      ),
      onPressed: onPressed,
      icon: const Icon(Icons.add),
      label: const Text('Add New'),
    );
  }
}
