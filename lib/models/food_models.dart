class FoodModels {
  final String image;
  final int mainText;
  final String description;

  FoodModels({
    required this.image,
    required this.mainText,
    required this.description,
  });

  String get _image => image;
  int get _mainText => mainText;
  String get _description => description;
}
