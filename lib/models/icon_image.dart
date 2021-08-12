class IconImage {
  String icon;
  String title;

  IconImage({required this.icon, required this.title});

  static List<IconImage> icons = [
    IconImage(icon: "assets/icons/icon_1.png", title: "Discover"),
    IconImage(icon: "assets/icons/icon_2.png", title: "Arbitrary"),
    IconImage(icon: "assets/icons/icon_3.png", title: "Author Nearby"),
    IconImage(icon: "assets/icons/icon_4.png", title: "WorldWide"),
    IconImage(icon: "assets/icons/icon_5.png", title: "Audio Book"),
    IconImage(icon: "assets/icons/icon_6.png", title: "Quick Search"),
    IconImage(icon: "assets/icons/icon_7.png", title: "My Country"),
  ];
}
