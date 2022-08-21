import 'package:flutter/material.dart';

import '../../../constants.dart';
import '../../../models/MyFiles.dart';
import '../../../responsive.dart';
import 'my_files_card.dart';

class MyFiles extends StatelessWidget {
  const MyFiles({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
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
        Responsive(
          mobile: MyFilesGridView(
            crossAxisCount: 2,
            childAspectRatio: size.width < 380 ? 0.9 : 1,
          ),
          tablet: MyFilesGridView(
            crossAxisCount: size.width <= 720 ? 2 : 4,
            childAspectRatio: size.width < 840 ? 1 : 1.2,
          ),
          desktop: MyFilesGridView(
            childAspectRatio: size.width < 1400 ? 1.0 : 1.2,
          ),
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

class MyFilesGridView extends StatelessWidget {
  const MyFilesGridView({
    Key key,
    this.crossAxisCount = 4,
    this.childAspectRatio = 1,
  }) : super(key: key);

  final int crossAxisCount;
  final double childAspectRatio;

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      physics: const NeverScrollableScrollPhysics(),
      itemCount: myFilesData.length,
      shrinkWrap: true,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: crossAxisCount,
        crossAxisSpacing: defaultPadding,
        mainAxisSpacing: defaultPadding,
        childAspectRatio: childAspectRatio,
      ),
      itemBuilder: (context, index) {
        return MyFilesCard(data: myFilesData[index]);
      },
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
