// ignore: file_names
// ignore_for_file: unused_import, file_names
class IconModel {
  String icon;
  String title;
  IconModel({
    required this.icon,
    required this.title,
  });

  static List<IconModel> icons = [
    IconModel(icon: "assets/icons/icon_3", title: "Drinks"),
    IconModel(icon: "assets/icons/icon_4", title: "icecream"),
    IconModel(icon: "assets/icons/icon_5", title: "makeup"),
    IconModel(icon: "assets/icons/icon_4", title: "Drugs"),
  ];
}
