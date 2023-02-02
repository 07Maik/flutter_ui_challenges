class ItemShoppingModel {
  final String id;
  final String brand;
  final String description;
  final String pathImage;
  final String price;
  final String generalDescription;
  final int colorBackground;

  ItemShoppingModel({
    required this.id,
    required this.brand,
    required this.description,
    required this.pathImage,
    required this.price,
    required this.generalDescription,
    required this.colorBackground,
  });

  static List<ItemShoppingModel> getItems() {
    return <ItemShoppingModel>[
      ItemShoppingModel(
        id: "1",
        colorBackground: 0xffdaffda,
        brand: "Theory",
        pathImage:
            "https://res.cloudinary.com/dg6ag2cyo/image/upload/v1672711165/flutter_ui/T-Shirt-PNG-Transparent-Image_ljbqqm.png",
        price: "\$345.00",
        generalDescription: "Irregular Rib Skirt",
        description:
            "1Aliqua deserunt ut dolore fugiat consectetur ut. Ullamco commodo in esse consequat. Ex adipisicing qui commodo quis aliquip cupidatat anim incididunt commodo Lorem excepteur deserunt cupidatat.",
      ),
      ItemShoppingModel(
        id: "2",
        colorBackground: 0xffffc8c8,
        brand: "White Tees",
        pathImage:
            "https://res.cloudinary.com/dg6ag2cyo/image/upload/v1672710355/flutter_ui/purepng.com-sports-wearclothingsports-wearpeoplemodelmanmenguymalefitnesshandsomesportwearclothcasual-631522326824lt08q_pndx4n.png",
        price: "\$50.00",
        generalDescription: "Bubble Elastic T-shirt",
        description:
            "2Aliqua deserunt ut dolore fugiat consectetur ut. Ullamco commodo in esse consequat. Ex adipisicing qui commodo quis aliquip cupidatat anim incididunt commodo Lorem excepteur deserunt cupidatat.",
      ),
      ItemShoppingModel(
        id: "3",
        colorBackground: 0xfffecaf5,
        brand: "Roller Rabbit",
        pathImage:
            "https://res.cloudinary.com/dg6ag2cyo/image/upload/v1672710713/flutter_ui/fitness-png-97-274x350_fot1rp.png",
        price: "\$345.00",
        generalDescription: "Irregular Rib Skirt",
        description:
            "3Aliqua deserunt ut dolore fugiat consectetur ut. Ullamco commodo in esse consequat. Ex adipisicing qui commodo quis aliquip cupidatat anim incididunt commodo Lorem excepteur deserunt cupidatat.",
      ),
      ItemShoppingModel(
        id: "4",
        colorBackground: 0xffe9d4ff,
        brand: "Nike",
        pathImage:
            "https://res.cloudinary.com/dg6ag2cyo/image/upload/v1672711234/flutter_ui/Fitness-PNG-Picture_ok5x97.png",
        price: "\$345.00",
        generalDescription: "Irregular Rib Skirt",
        description:
            "4Aliqua deserunt ut dolore fugiat consectetur ut. Ullamco commodo in esse consequat. Ex adipisicing qui commodo quis aliquip cupidatat anim incididunt commodo Lorem excepteur deserunt cupidatat.",
      ),
      ItemShoppingModel(
        id: "5",
        colorBackground: 0xffdaffda,
        brand: "Theory",
        pathImage:
            "https://res.cloudinary.com/dg6ag2cyo/image/upload/v1672710355/flutter_ui/purepng.com-sports-wearclothingsports-wearpeoplemodelmanmenguymalefitnesshandsomesportwearclothcasual-631522326824lt08q_pndx4n.png",
        price: "\$345.00",
        generalDescription: "Irregular Rib Skirt",
        description:
            "5Aliqua deserunt ut dolore fugiat consectetur ut. Ullamco commodo in esse consequat. Ex adipisicing qui commodo quis aliquip cupidatat anim incididunt commodo Lorem excepteur deserunt cupidatat.",
      ),
      ItemShoppingModel(
        id: "6",
        colorBackground: 0xffffc8c8,
        brand: "Theory",
        pathImage:
            "https://res.cloudinary.com/dg6ag2cyo/image/upload/v1672710713/flutter_ui/fitness-png-97-274x350_fot1rp.png",
        price: "\$345.00",
        generalDescription: "Irregular Rib Skirt",
        description:
            "6Aliqua deserunt ut dolore fugiat consectetur ut. Ullamco commodo in esse consequat. Ex adipisicing qui commodo quis aliquip cupidatat anim incididunt commodo Lorem excepteur deserunt cupidatat.",
      ),
    ];
  }
}
