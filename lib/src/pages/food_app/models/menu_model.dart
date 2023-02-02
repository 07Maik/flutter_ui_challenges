class MenuModel {
  final String name;
  final String path;

  MenuModel({required this.name, required this.path});

  static List<MenuModel> getList() {
    return [
      MenuModel(name: 'Pizza', path: 'assets/food_app/pizza.svg'),
      MenuModel(name: 'Burgers', path: 'assets/food_app/burger.svg'),
      MenuModel(name: 'Hot Dogs', path: 'assets/food_app/hotdog.svg'),
      MenuModel(name: 'Nuddles', path: 'assets/food_app/nuddles.svg'),
      MenuModel(name: 'Salads', path: 'assets/food_app/salad.svg'),
      MenuModel(name: 'BBQ', path: 'assets/food_app/bbq.svg'),
      MenuModel(name: 'Coffees', path: 'assets/food_app/coffee.svg'),
      MenuModel(name: 'Desserts', path: 'assets/food_app/dessert.svg'),
    ];
  }
}
