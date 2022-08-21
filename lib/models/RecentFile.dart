import '../res/assets_res.dart';

class RecentFile {
  final String icon, title, date, size;

  RecentFile({this.icon, this.title, this.date, this.size});
}

final recentFilesData = <RecentFile>[
  RecentFile(
    icon: AssetsRes.XD_FILE,
    title: 'XD File',
    date: '01-03-2021',
    size: '3.5mb',
  ),
  RecentFile(
    icon: AssetsRes.FIGMA_FILE,
    title: 'Figma File',
    date: '27-02-2021',
    size: '19.0mb',
  ),
  RecentFile(
    icon: AssetsRes.DOC_FILE,
    title: 'Documents',
    date: '23-02-2021',
    size: '32.5mb',
  ),
  RecentFile(
    icon: AssetsRes.SOUND_FILE,
    title: 'Sound File',
    date: '21-02-2021',
    size: '3.5mb',
  ),
  RecentFile(
    icon: AssetsRes.MEDIA_FILE,
    title: 'Media File',
    date: '23-02-2021',
    size: '2.5gb',
  ),
  RecentFile(
    icon: AssetsRes.PDF_FILE,
    title: 'Sales PDF',
    date: '25-02-2021',
    size: '3.5mb',
  ),
  RecentFile(
    icon: AssetsRes.EXCLE_FILE,
    title: 'Excel File',
    date: '25-02-2021',
    size: '34.5mb',
  ),
];
