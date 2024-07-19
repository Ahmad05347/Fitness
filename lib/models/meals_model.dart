class MealsModel {
  final String image;
  final String mainText;
  final String mealNum;
  final String mealCal;
  final String healthScore;

  MealsModel({
    required this.image,
    required this.mainText,
    required this.mealNum,
    required this.mealCal,
    required this.healthScore,
  });

  String get _image => image;
  String get _mainText => mainText;
  String get _mealNum => mealNum;
  String get _mealCal => mealCal;
  String get _healthScore => healthScore;
}
