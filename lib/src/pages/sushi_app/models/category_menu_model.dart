class CategoryMenuModel {
  final String urlImage;
  final int backgroundColorHexadecimal;

  CategoryMenuModel(this.urlImage, this.backgroundColorHexadecimal);

  static List<CategoryMenuModel> getItems() {
    return <CategoryMenuModel>[
      CategoryMenuModel(
        'https://res.cloudinary.com/dg6ag2cyo/image/upload/v1671459776/flutter_ui/6-2-burger-png-image_f99ipc.png',
        0xffffded8,
      ),
      CategoryMenuModel(
        'https://res.cloudinary.com/dg6ag2cyo/image/upload/v1671459776/flutter_ui/6-2-burger-png-image_f99ipc.png',
        0xffd8f3ff,
      ),
      CategoryMenuModel(
        'https://res.cloudinary.com/dg6ag2cyo/image/upload/v1671459776/flutter_ui/6-2-burger-png-image_f99ipc.png',
        0xfffff2b3,
      ),
      CategoryMenuModel(
        'https://res.cloudinary.com/dg6ag2cyo/image/upload/v1671459776/flutter_ui/6-2-burger-png-image_f99ipc.png',
        0xffffded8,
      ),
      CategoryMenuModel(
        'https://res.cloudinary.com/dg6ag2cyo/image/upload/v1671459776/flutter_ui/6-2-burger-png-image_f99ipc.png',
        0xffd8f3ff,
      ),
    ];
  }
}
